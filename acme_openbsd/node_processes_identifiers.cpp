#include <sys/types.h>
#include <sys/signal.h>
#include <sys/sysctl.h>
#include <sys/proc.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

long long * openbsd_processes_identifiers_dup(int & count) 
{

count = 0;
//int main() {
    int mib[6];
    size_t size=0;
    struct kinfo_proc *procs, *kp;
    int i;

    // Define the MIB for process table
    mib[0] = CTL_KERN;
    mib[1] = KERN_PROC;
    mib[2] = KERN_PROC_ALL;
       mib[3] = 0; // Process UID filter (0 means all users)
    mib[4] = sizeof(struct kinfo_proc);
    mib[5] = 0;

    // First, get the size of the process table
    if (sysctl(mib, 6, NULL, &size, NULL, 0) == -1) {
       printf("Couldn't get process list(1) error=%d\n", errno);
        return nullptr;
    }
    
    printf("size returned is=%lld\n", size);
    
    size*=2;
    
    printf("size to allocate is=%lld\n", size);
    
    printf("mib[5] returned is=%d\n", mib[5]);
    
    mib[5] = size / sizeof(struct kinfo_proc);
    
    printf("mib[5] set is=%d\n", mib[5]);
    // Allocate memory to store process data
    
    procs = (kinfo_proc*) malloc(size);
    
    if(!procs)
    {
       printf("Couldn't malloc process list(1)\n");
       return nullptr;
       
    }

    // Get the process list
    if (sysctl(mib, 6, procs, &size, NULL, 0) == -1) {
       printf("Couldn't get process list(2) error=%d\n", errno);
       free(procs);
       return nullptr;
    }

    count = size / sizeof(struct kinfo_proc);
    auto * pll = (long long *) malloc(sizeof(long long) * count);
    
    if(!pll)
    {
       
       printf("Couldn't malloc process list(2)\n");
       free(procs);
       return nullptr;
       
    }

    printf("Running processes count %d\n", count);
    // Loop through processes and print their PIDs
    for(i = 0; i < count ; i++)
    {
        printf("PID: %d\n", procs[i].p_pid);
        pll[i] = procs[i].p_pid;
        
    }

   free(procs);
    return pll;
//}
      
}
   
