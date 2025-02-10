#include <sys/types.h>
#include <sys/signal.h>
#include <sys/sysctl.h>
#include <sys/proc.h>
#include <sys/vmmeter.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>

#include <sys/types.h>
#include <sys/sysctl.h>
#include <sys/proc.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <dirent.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <elf.h>
#include <limits.h>

//// OpenBSD Virtual Memory Entry Structure
//struct kinfo_vmentry {
  //  uintptr_t kve_start;  // Start address of mapping
    //uintptr_t kve_end;    // End address of mapping
    //int kve_protection;   // Memory protection flags (PROT_READ, PROT_EXEC, etc.)
//};

//struct kinfo_vmentry {
  //  uintptr_t kve_start;      // Start address of mapping
    //uintptr_t kve_end;        // End address of mapping
    //int kve_flags;            // Protection flags
    //char kve_path[PATH_MAX];  // Path of mapped file (if applicable)
//d};


// Check if the given file is an ELF shared object
int is_shared_library(const char *filepath) {
    int fd = open(filepath, O_RDONLY);
    if (fd < 0) return 0;

    Elf64_Ehdr ehdr;
    if (read(fd, &ehdr, sizeof(ehdr)) != sizeof(ehdr)) {
        close(fd);
        return 0;
    }
    close(fd);

    return (memcmp(ehdr.e_ident, ELFMAG, SELFMAG) == 0) && (ehdr.e_type == ET_DYN);
}

// Scan libraries in /usr/lib and /usr/local/lib
const char * scan_shared_libraries(pid_t pid, unsigned long long mapped_addr, const char** libs_paths) 
{
   //const char *lib_paths[] = {"/usr/lib", "/usr/local/lib"};
   struct dirent *entry;
   struct stat st;
   int i;

   while(auto plibpath = *libs_paths++)
   {
       
      auto fullpath = plibpath;

      if (!strstr(fullpath, ".so")) continue;  // Only check .so files


      if (stat(fullpath, &st) == 0 && is_shared_library(fullpath)) 
      {
      
         void *mapped = mmap(NULL, st.st_size, PROT_READ, MAP_PRIVATE, open(fullpath, O_RDONLY), 0);
         
         if (mapped != MAP_FAILED)
         {
            
            if ((unsigned long long)mapped == mapped_addr) 
            {
               
               printf("  Matched: %s (Address: %p)\n", fullpath, (void *)mapped_addr);
               
               munmap(mapped, st.st_size);
               
               return fullpath;
               
            }
            
            munmap(mapped, st.st_size);
            
         }
         
      }
      
   }
   
   return nullptr;
   
}


const char ** openbsd_tell_whether_modules_are_loaded(long & c, int iPid, const char ** modulesfullpath) 
{
   
    int mib[4];
    size_t size = 0;
    struct kinfo_vmentry *vmentries, *vm;
    int count, i;
    
    c = 0;

    // Set up the sysctl MIB for querying process memory mappings
    mib[0] = CTL_KERN;
    mib[1] = KERN_PROC_VMMAP;
    mib[2] = iPid;
    //mib[3] = sizeof(struct kinfo_vmentry);

    // Get size of the process memory map
    if (sysctl(mib, 3, NULL, &size, NULL, 0) == -1) {
        printf("sysctl size error %d\n", errno);
        return nullptr;
    }

    // Allocate memory for entries
    vmentries = (kinfo_vmentry* )malloc(size);
    if (vmentries == NULL) {
        printf("malloc error");
        return nullptr;
    }

    // Get the actual memory map data
    if (sysctl(mib, 3, vmentries, &size, NULL, 0) == -1) {
        printf("sysctl fetch error %d\n", errno);
        free(vmentries);
        return nullptr;
    }

    count = size / sizeof(struct kinfo_vmentry);
    printf("Modules loaded by PID %d:\n", iPid);
    
    auto pp = (char **) malloc(sizeof(char*) * (count));


    // Loop through the memory mappings and print file-backed entries
    for (i = 0, vm = vmentries; i < count; i++, vm++) {
//        if (vm->kve_path[0] != '\0') {  // Only print mapped files (skip anonymous mappings)
    //        printf("  %s\n", vm->kve_path);
  //          pp[c] = strdup(vm->kve_path);
      //      c++;
        //}
        if ((vm->kve_protection & 0x5) == 0x5) {  // PROT_READ | PROT_EXEC
            printf("  Memory Range: %p - %p (Checking...)\n", 
                   (void *)vm->kve_start, (void *)vm->kve_end);
            auto path = scan_shared_libraries(iPid, vm->kve_start, modulesfullpath);
            
            if(path)
            {
               pp[c]= (char *) path;
               c++;
               
            }
        }
    }
    free(vmentries);
    
    return (const char **) pp;
}
