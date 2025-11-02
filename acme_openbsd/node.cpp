#include "framework.h"
#include "node.h"
#include "acme/exception/not_implemented.h"
#include "acme/operating_system/summary.h"
#include "acme/filesystem/filesystem/directory_system.h"
#include "acme/filesystem/filesystem/file_system.h"
#include "acme/filesystem/filesystem/path_system.h"
#include "acme/prototype/collection/str_array.h"
#include <sys/utsname.h>

//::user::enum_desktop _get_edesktop();
//#include <sys/types.h>
//#include <sys/sysctl.h>
//#include <sys/proc.h>
//#include <stdio.h>
//#include <stdint.h>

long long * openbsd_processes_identifiers_dup(int & count);
const char ** openbsd_tell_whether_modules_are_loaded(long & c, int iPid, const char ** modulesfullpath);
void install_operating_system_default_signal_handlers();
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>
#include <errno.h>
#include <string.h>

//void sigchld_handler(int signum) {
    //int saved_errno = errno;
    //int status;
    //pid_t pid;
    
    //printf_line("Child exited!!");
    
    //preempt(5_s);

    //// Reap all dead children
    //while ((pid = waitpid(-1, &status, WNOHANG)) > 0) {
        //if (WIFEXITED(status)) {
            //printf("Child %d exited with status %d\n", pid, WEXITSTATUS(status));
        //} else if (WIFSIGNALED(status)) {
            //printf("Child %d terminated by signal %d (%s)\n", pid, WTERMSIG(status), strsignal(WTERMSIG(status)));
        //}
    //}

    //errno = saved_errno;
//}

namespace acme_openbsd
{


   node::node()
   {


   }


   node::~node()
   {


   }


   void node::initialize(::particle * pparticle)
   {

      //auto estatus =

      ::acme_posix::node::initialize(pparticle);
      
      install_operating_system_default_signal_handlers();
         

//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      return estatus;

   }

//   string node::get_user_name()
//   {
//
//      WCHAR wsz[1024];
//
//      DWORD dwSize = sizeof(wsz) / sizeof(WCHAR);
//
//      ::GetUserNameW(wsz, &dwSize);
//
//      return string(wsz);
//
//   }
//#include "aura/os/openbsd/_c.h"
//
//
//   bool node::_os_calc_app_dark_mode()
//   {
//
//      try
//      {
//
//         ::openbsd::registry::key key;
//
//         key.open(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize");
//
//         unsigned int dw;
//
//         auto estatus = key._get("AppsUseLightTheme", dw);
//
//         if (::failed(estatus))
//         {
//
//            estatus = key._get("SystemUseLightTheme", dw);
//
//            if (::failed(estatus))
//            {
//
//               return false;
//
//            }
//
//         }
//
//         return dw == 0;
//
//      }
//      catch (...)
//      {
//
//         return false;
//
//      }
//
//   }
//
//
//   bool node::_os_calc_system_dark_mode()
//   {
//
//      try
//      {
//
//         ::openbsd::registry::key key;
//
//         key.open(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize");
//
//         unsigned int dw;
//
//         auto estatus = key._get("SystemUseLightTheme", dw);
//
//         if (::failed(estatus))
//         {
//
//            estatus = key._get("AppsUseLightTheme", dw);
//
//            if (::failed(estatus))
//            {
//
//               return false;
//
//            }
//
//         }
//
//         return dw == 0;
//
//      }
//      catch (...)
//      {
//
//         return false;
//
//      }
//
//   }
//
//
//   ::color::color node::get_default_color(::u64 u)
//   {
//
//      switch (u)
//      {
//      case COLOR_3DFACE:
//         return argb(127, 192, 192, 184);
//      case COLOR_WINDOW:
//         return argb(127, 255, 255, 255);
//      case COLOR_3DLIGHT:
//         return argb(127, 218, 218, 210);
//      case COLOR_3DHIGHLIGHT:
//         return argb(127, 238, 238, 230);
//      case COLOR_3DSHADOW:
//         return argb(127, 138, 138, 130);
//      case COLOR_3DDKSHADOW:
//         return argb(127, 90, 90, 80);
//      default:
//         break;
//      }
//
//      return argb(127, 0, 0, 0);
//
//   }
//
//   
//   void node::set_console_colors(unsigned int dwScreenColors, unsigned int dwPopupColors, unsigned int dwWindowAlpha)
//   {
//
//      ::openbsd::registry::key key(HKEY_CURRENT_USER, "Console", true);
//
//      key._set("ScreenColors", dwScreenColors);
//      key._set("PopupColors", dwPopupColors);
//      key._set("WindowAlpha", dwWindowAlpha);
//
//   }
//
//
//
//   ::e_status node::set_system_dark_mode1(bool bSet)
//   {
//
//      ::openbsd::registry::key key(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize", true);
//
//      unsigned int dwSystemUseLightTheme;
//      if (bSet)
//      {
//         dwSystemUseLightTheme = 0;
//      }
//      else
//      {
//         dwSystemUseLightTheme = 1;
//      }
//
//      key._set("SystemUsesLightTheme", dwSystemUseLightTheme);
//      return ::success;
//
//   }
//
//
//   ::e_status node::set_app_dark_mode1(bool bSet)
//   {
//
//      ::openbsd::registry::key key(HKEY_CURRENT_USER, "Software\\Microsoft\\Windows\\CurrentVersion\\Themes\\Personalize", true);
//
//      unsigned int dwAppsUseLightTheme;
//      if (bSet)
//      {
//         dwAppsUseLightTheme = 0;
//      }
//      else
//      {
//         dwAppsUseLightTheme = 1;
//      }
//
//      key._set("AppsUseLightTheme", dwAppsUseLightTheme);
//
//      return ::success;
//
//   }
//
//   
//   double node::get_time_zone()
//   {
//
//      double dTimeZone = 0.;
//
//#ifdef OPENBSD
//      {
//         //time_t t = time(nullptr);
//
//         //struct tm *p = localtime(&t);
//
//         DYNAMIC_TIME_ZONE_INFORMATION i = {};
//
//         unsigned int dw = GetDynamicTimeZoneInformation(&i);
//
//         if (dw == TIME_ZONE_ID_STANDARD)
//         {
//
//            dTimeZone = -((double)(i.Bias + i.StandardBias) / 60.0);
//
//         }
//         else if (dw == TIME_ZONE_ID_DAYLIGHT)
//         {
//
//            dTimeZone = -((double)(i.Bias + i.DaylightBias) / 60.0);
//
//         }
//         else
//         {
//
//            dTimeZone = -((double)i.Bias / 60.0);
//
//         }
//
//      }
//#else
//      {
//
//         time_t t = time(nullptr);
//
//         struct tm lt = { 0 };
//
//         localtime_r(&t, &lt);
//
//         //printf("Offset to GMT is %lds.\n", lt.tm_gmtoff);
//
//         //printf("The time zone is '%s'.\n", lt.tm_zone);
//
//         dTimeZone = +((double)lt.tm_gmtoff / (60.0 * 60.0));
//
//      }
//#endif
//
//      return dTimeZone;
//
//   }
//
//
//   ::e_status node::open_folder(::file::path & pathFolder)
//   {
//
//      wstring wstrFolder(pathFolder);
//
//      int i = (int) (iptr) ::ShellExecuteW(nullptr, L"open", wstrFolder, nullptr, nullptr, SW_NORMAL);
//
//      if (i < 32)
//      {
//
//         switch (i)
//         {
//         case 0:
//            //The operating system is out of memory or resources.
//            return error_no_memory;
//         case ERROR_FILE_NOT_FOUND:
//            return error_file_not_found;
//            //The specified file was not found.
//         case ERROR_PATH_NOT_FOUND:
//            return error_path_not_found;
//            //            The specified path was not found.
//         case          ERROR_BAD_FORMAT:
//            return error_bad_format;
//            //The.exe file is invalid(non - Win32.exe or error in.exe image).
//            //case SE_ERR_ACCESSDENIED:
//            //         return error_access_denied;
//            ////The operating system denied access to the specified file.
//            //SE_ERR_ASSOCINCOMPLETE
//            //The file name association is incomplete or invalid.
//            //SE_ERR_DDEBUSY
//            //The DDE transaction could not be completed because other DDE transactions were being processed.
//            //SE_ERR_DDEFAIL
//            //The DDE transaction failed.
//            //SE_ERR_DDETIMEOUT
//            //The DDE transaction could not be completed because the request timed out.
//            //SE_ERR_DLLNOTFOUND
//            //The specified DLL was not found.
//            //SE_ERR_FNF
//            //The specified file was not found.
//            //SE_ERR_NOASSOC
//            //There is no application associated with the given file name extension.This error will also be returned if you attempt to print a file that is not printable.
//            //SE_ERR_OOM
//            //There was not enough memory to complete the operation.
//            //SE_ERR_PNF
//            //The specified path was not found.
//            //SE_ERR_SHARE
//            //A sharing violation occurred.*/
//         default:
//            return error_failed;
//         }
//
//      }
//
//      return ::success;
//
//   }
//
//
//   ::e_status node::register_dll(const ::file::path & pathDll)
//   {
//
//
//      string strPathDll;
//         
//      //#ifdef _DEBUG
//         
//      strPathDll = pathDll;
//         
//      //#else
//      //
//      //   strPathDll = m_psystem->m_pnodedir->matter() / "time" / process_platform_dir_name() /"stage/_desk_tb.dll";
//      //
//      //#endif
//         
//      string strParam;
//         
//      strParam = "/s \"" + strPathDll + "\"";
//         
//      //wstring wstrParam(strParam);
//         
//      //STARTUPINFOW si = {};
//         
//      //si.cb = sizeof(si);
//         
//      //si.wShowWindow = SW_HIDE;
//         
//      //PROCESS_INFORMATION pi = {};
//         
//      WCHAR wszSystem[2048];
//         
//      GetSystemDirectoryW(wszSystem, sizeof(wszSystem) / sizeof(WCHAR));
//         
//      wstring wstrSystem(wszSystem);
//         
//      ::file::path path(wstrSystem);
//         
//      path /= "regsvr32.exe";
//         
//      property_set set;
//         
//      set["privileged"] = true;
//         
//      if (!call_sync(path, strParam, path.folder(), ::e_display_none, 3_min, set))
//      {
//         
//         return false;
//         
//      }
//         
//      //if (CreateProcessW(wstrPath, wstrParam, nullptr, nullptr, false, 0, nullptr, wstrSystem, &si, &pi))
//      //{
//         
//      //   output_debug_string("created");
//         
//      //}
//      //else
//      //{
//         
//      //   output_debug_string("not created");
//         
//      //}
//         
//      //CloseHandle(pi.hProcess);
//         
//      //CloseHandle(pi.htask);
//         
//      return true;
//         
//   }
//
//
//   ::e_status node::start()
//   {
//
//      auto estatus = m_psystem->m_papexsystem->m_papex->thread_initialize(m_psystem->m_papexsystem);
//
//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      estatus = m_psystem->on_start();
//
//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      estatus = m_psystem->main();
//
//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      estatus = m_psystem->inline_term();
//
//      if (!estatus)
//      {
//
//         return estatus;
//
//      }
//
//      return estatus;
//
//
//   }
//
//
//   ::e_status node::get_firefox_installation_info(string& strPathToExe, string& strInstallDirectory)
//   {
//
//#ifdef OPENBSD_DESKTOP
//
//      try
//      {
//
//         ::openbsd::registry::key key(HKEY_LOCAL_MACHINE, "SOFTWARE\\Mozilla\\Mozilla Firefox");
//
//         string strCurrentVersion;
//
//         key.get("CurrentVersion", strCurrentVersion);
//
//         key.open(HKEY_LOCAL_MACHINE, "SOFTWARE\\Mozilla\\Mozilla Firefox\\" + strCurrentVersion + "\\Main");
//
//         key.get("PathToExe", strPathToExe);
//
//         key.get("Install Directory", strInstallDirectory);
//
//      }
//      catch (const ::e_status& estatus)
//      {
//
//         return estatus;
//
//      }
//
//      return ::success;
//
//#else
//
//      return ::error_failed;
//
//#endif
//
//   }
//
//
//   ::e_status node::_001InitializeShellOpen()
//   {
//
//      //ASSERT(m_atomApp == nullptr && m_atomSystemTopic == nullptr); // do once
//
//      //m_atomApp            = ::GlobalAddAtomW(::str::international::utf8_to_unicode(m_strAppName));
//
//      //m_atomSystemTopic    = ::GlobalAddAtomW(L"system");
//
//      return ::success;
//
//   }
//
//
//   ::e_status node::process_init()
//   {
//
//      
//
//      defer_initialize_winsock();
//      return success;
//
//   }
//
//
//   string node::veriwell_multimedia_music_midi_get_default_library_name()
//   {
//
//      return "music_midi_mmsystem";
//
//   }
//
//
//   string node::multimedia_audio_mixer_get_default_library_name()
//   {
//
//      return "audio_mixer_mmsystem";
//
//   }
//
//
//   string node::multimedia_audio_get_default_library_name()
//   {
//
//      string str;
//
//      if (file_exists(m_psystem->m_pnodedir->system() / "config\\system\\audio.txt"))
//      {
//
//         str = file_as_string(m_psystem->m_pnodedir->system() / "config\\system\\audio.txt");
//
//      }
//      else
//      {
//
//         ::file::path strPath;
//
//         strPath = m_psystem->m_pnodedir->appdata() / "audio.txt";
//
//         str = file_as_string(strPath);
//
//      }
//
//      if (str.has_char())
//         return "audio_" + str;
//      else
//         return "audio_mmsystem";
//
//   }
//
//
   // Twitter Automator and Denis Lakic and UpWork contribution
// enzymes: Liveedu.tv, Twitch.tv and Mixer.com streamers and viewers
// Mummi and bilbo!!
// create call to :
   void node::install_crash_dump_reporting(const ::scoped_string &strModuleNameWithTheExeExtension)
   {

//      ::openbsd::registry::key k;
//
//      string strKey = "SOFTWARE\\Microsoft\\Windows\\Windows Error Reporting\\LocalDumps\\" + strModuleNameWithTheExeExtension;
//
//      if (k._open(HKEY_LOCAL_MACHINE, strKey, true))
//      {
//         ::file::path str = m_psystem->m_pnodedir->system() / "CrashDumps" / strModuleNameWithTheExeExtension;
//         wstring wstr = str;
//         RegSetValueExW(k.m_hkey, L"DumpFolder", 0, REG_EXPAND_SZ, (byte*)wstr.c_str(), unsigned int((wcslen(wstr) + 1) * sizeof(wchar_t)));
//         unsigned int dw = 10;
//         RegSetValueExW(k.m_hkey, L"DumpCount", 0, REG_DWORD, (byte*)&dw, sizeof(dw));
//         dw = 2;
//         RegSetValueExW(k.m_hkey, L"DumpType", 0, REG_DWORD, (byte*)&dw, sizeof(dw));
//
//      }
//
//      output_debug_string("test01");

   }
   
   
   ::process_identifier_array node::processes_identifiers() 
   {
      
      int c = 0;
      
      auto pll = openbsd_processes_identifiers_dup(c);
      
      ::process_identifier_array processidentifiera;
      
      for(int i = 0;i < c; i++)
      {
         
         processidentifiera.add(pll[i]);
         
      }
      
      free(pll);
      
      return ::transfer(processidentifiera);
      
   }
   
   
   ::file::path_array_base node::process_identifier_modules_paths(process_identifier processidentifier)
   {
      
      throw not_implemented();
      
      return {};
      
      //long l = 0;
      
      //auto pp = openbsd_list_loaded_modules(l, processidentifier);
      
          //auto stra=::transfer(string_array_from_strdup_count(pp, l));
      
      //::file::path_array_base a;
      
      
      //for(auto & str : stra)
      //{
         
         //a.add(str);
         
      //}
      
      //return ::transfer(a);
      
   }
   
   bool node::are_any_shared_libraries_mapped(const ::file::path_array_base & patha)
   {
      
      throw not_implemented();
      
            long c = 0;

      
      //if(patha.is_empty())
      //{
         
         //return false;
         
      //}
      
      //::string_array stra;
      
      //for(auto & path: patha)
      //{
         
         //stra.add(path);
         
      //}
      
      //auto pp = strdupa_from_stringa(stra);
      
      //auto pids = processes_identifiers();
      
      
      //for(auto & pid:pids)
      //{
         
      //auto p = openbsd_tell_whether_modules_are_loaded(c, pid, (const char **) pp);
      
      //if(p)
      //{
         
         //free((void *) p);
         
      //}
      
      //if(c >0)
      //{
         
         //break;
         
      //}
      
   //}
      
      //free(pp);
      
      return c>0;
      
   }
   
   bool node::is_application_running_good_effort(const ::scoped_string & scopedstrRepos, const ::scoped_string & scopedstrApp)
   {
      
      return false;
      
   }
   //bool node::are_framework_shared_libraries_busy(const ::scoped_string & scopedstrRepos, const ::scoped_string & scopedstrApp)
//{

   //string_array stra;

   //stra.add(this->library_file_name("acme"));
   //stra.add(this->library_file_name("apex"));
   //stra.add(this->library_file_name("aqua"));
   //stra.add(this->library_file_name("aura"));

   //::file::path_array_base patha;

   //::file::path pathBin = directory_system()->home() / "application" / scopedstrRepos / scopedstrApp / "binary";

   //patha = pathBin / stra;

//return are_shared_libraries_busy(patha);

//}

   
   

   //return false;
////
////
////   int g_iMemoryCountersStartable = 0;
////
////   bool node::memcnts()
////   {
////
////      if (g_iMemoryCountersStartable && g_iMemoryCounters < 0)
////      {
////
////         g_iMemoryCounters = file_exists(m_psystem->m_pnodedir->config() / "system/memory_counters.txt") ? 1 : 0;
////
////         if (g_iMemoryCounters)
////         {
////
////            g_pmutexMemoryCounters = new ::mutex(e_create_new, false, "Global\\ca2_memory_counters");
////
////         }
////
////      }
////
////      return g_iMemoryCountersStartable && g_iMemoryCounters;
////
////   }
////
////
////   ::file::path* g_pMemoryCounters = nullptr;
////
////
////   CLASS_DCL_ACME::file::path node::memcnts_base_path()
////   {
////
////      if (g_iMemoryCountersStartable && g_pMemoryCounters == nullptr)
////      {
////
////         g_pMemoryCounters = new ::file::path();
////
////#if defined(_UWP)
////
////         string strBasePath = m_psystem->m_pnodedir->system() / "memory_counters";
////
////#else
////
////         ::file::path strModule = module_path_from_pid(getpid());
////
////         string strBasePath = m_psystem->m_pnodedir->system() / "memory_counters" / strModule.title() / __str(getpid());
////
////#endif
////
////         * g_pMemoryCounters = strBasePath;
////
////      }
////
////      return *g_pMemoryCounters;
////
////   }
////
////


//   ::e_status node::datetime_to_filetime(::filetime_t * pfiletime, const ::datetime::time& time)
//   {
//
//      SYSTEMTIME sysTime;
//
//      sysTime.wYear = (::u16)time.GetYear();
//      sysTime.wMonth = (::u16)time.GetMonth();
//      sysTime.wDay = (::u16)time.GetDay();
//      sysTime.wHour = (::u16)time.GetHour();
//      sysTime.wMinute = (::u16)time.GetMinute();
//      sysTime.wSecond = (::u16)time.GetSecond();
//      sysTime.wMilliseconds = 0;
//
//      // convert system time to local file time
//      FILETIME localTime;
//
//      DWORD dwLastError = ::GetLastError();
//
//      if (!SystemTimeToFileTime((LPSYSTEMTIME)&sysTime, &localTime))
//      {
//
//         DWORD dwLastError = ::GetLastError();
//
//         return last_error_to_status(dwLastError);
//
//      }
//
//      // convert local file time to UTC file time
//      if (!LocalFileTimeToFileTime(&localTime, (FILETIME*)pfiletime))
//      {
//
//         DWORD dwLastError = ::GetLastError();
//
//         return last_error_to_status(dwLastError);
//
//      }
//
//      return ::success;
//
//   }


//   ::e_status node::last_error_to_status(DWORD dwLastError)
//   {
//
//      if (dwLastError == 0)
//      {
//
//         return ::success;
//
//      }
//      else
//      {
//
//         return error_failed;
//
//      }
//
//
//   }


   string node::audio_get_default_implementation_name()
   {

      return "sndio";

   }


   void node::shell_open(const ::file::path & path, const ::scoped_string &  strParams, const ::file::path & pathFolder)
   {

      string str(path);

      fork([this, str]()
           {

              ::system("xdg-open \"" + str + "\" & ");

           });

   }


   ::pointer <::operating_system::summary > node::operating_system_summary()
   {

      auto psummary = øcreate_new < ::operating_system::summary >();


      //::particle::initialize(pparticle);

      ::string strOs;
      ::string strVer;
      //}

      // freedesktop.org and systemd
      if (file_system()->exists("/etc/os-release"))
      {
      
//         printf("/etc/os-release exists?!?!");

		 auto str = file_system()->as_string("/etc/os-release");
		 
		 ::property_set set;

         set.parse_standard_configuration(str);

         psummary->m_strSystem = set["ID"];
         psummary->m_strSystemBranch = set["VARIANT_ID"];
         psummary->m_strAmbient = psummary->m_strSystemBranch;
         psummary->m_strSystemRelease = set["VERSION_ID"];
         psummary->m_strSystemFamily = set["ID_LIKE"];

         auto iDot = psummary->m_strSystemRelease.find_index('.');

         if(iDot > 0)
         {

            psummary->m_strSystemRelease = psummary->m_strSystemRelease.left(iDot);

         }

         psummary->m_strSystem.make_lower();
         psummary->m_strSystemBranch.make_lower();
         psummary->m_strAmbient.make_lower();
         psummary->m_strSystemRelease.make_lower();
         psummary->m_strSystemFamily.make_lower();

      }
      else
      {
      
         struct utsname utsname;
         
         int iRet = uname(&utsname);
         
         if(iRet >= 0)
         {
      
            ::string strSysName = utsname.sysname;

            ::string strRelease = utsname.release;
            
            strSysName.trim();
            
            strRelease.trim();
            
            //informationf("utsname.sysname : %s", strSysName.c_str());
            
            //informationf("utsname.release : %s", strRelease.c_str());
            
            if(strSysName.case_insensitive_equals("openbsd") && strRelease.has_character())
            {
            
               psummary->m_strSystem = "openbsd";
               psummary->m_strSystemRelease = strRelease;
               psummary->m_strSystemFamily = "openbsd";
            
            }
      
         }
      
      }

      auto strLowerCaseCurrentDesktop = this->get_environment_variable("XDG_CURRENT_DESKTOP").lowered();

      //informationf("lower case xdg_current_desktop is %s", strLowerCaseCurrentDesktop.c_str());
      
      if (strLowerCaseCurrentDesktop.equals("gnome"))
      {
         
         //informationf("Detected GNOME");

         psummary->m_strAmbient = "gnome";

      }
      else if (strLowerCaseCurrentDesktop.equals("kde"))
      {
         
         //informationf("Detected KDE");

         psummary->m_strAmbient = "kde";

      }
      else if (strLowerCaseCurrentDesktop.equals("lxde"))
      {
         
         //informationf("Detected LXDE");

         psummary->m_strAmbient = "lxde";

      }
      else if (strLowerCaseCurrentDesktop.equals("xfce"))
      {
         
         //informationf("Detected XFCE");

         psummary->m_strAmbient = "xfce";

      }
      
      if(psummary->m_strSystemBranch.is_empty())
      {

         psummary->m_strSystemBranch = psummary->m_strAmbient;

      }

      psummary->m_strSystemAmbientRelease=psummary->m_strSystem + "/" + psummary->m_strSystemBranch + "/" + psummary->m_strSystemRelease;

      //psummary->m_strSystemAmbientRelease = psummary->m_strSlashedStore;

      //psummary->m_strSlashedIntegration = psummary->m_strSlashedStore;

      //psummary->m_strSystemAmbientRelease.find_replace("/", "_");
      
      psummary->m_strSudoInstall = "doas pkg_add";
      
      auto pathHomeBin = directory_system()->home() / "bin";
      
      auto pathToolBin = path_system()->tool_folder_path() / "bin";
      
      psummary->m_strPathPrefix = ::string(pathHomeBin) + ":" + ::string(pathToolBin);
      
      this->set_environment_variable("__SYSTEM", psummary->m_strSystem);
      this->set_environment_variable("__SYSTEM_FAMILY", psummary->m_strSystemFamily);
      this->set_environment_variable("__SYSTEM_BRANCH", psummary->m_strSystemBranch);
      this->set_environment_variable("__SYSTEM_RELEASE", psummary->m_strSystemRelease);
      this->set_environment_variable("__SYSTEM_AMBIENT_RELEASE", psummary->m_strSystemAmbientRelease);
      ///this->set_environment_variable("__SYSTEM_SLASHED_INTEGRATION", psummary->m_strSlashedIntegration);
      //this->set_environment_variable("__SYSTEM_UNDERSCORE_OPERATING_SYSTEM", psummary->m_strSystemAmbientRelease);
      this->set_environment_variable("__SYSTEM_SUDO_INSTALL", psummary->m_strSudoInstall);
      this->set_environment_variable("__SYSTEM_TERMINAL", psummary->m_strTerminal);
      this->set_environment_variable("__AMBIENT", psummary->m_strAmbient);
      this->set_environment_variable("__PATH_PREFIX", psummary->m_strPathPrefix);

      return psummary;

   }


} // namespace acme_openbsd



