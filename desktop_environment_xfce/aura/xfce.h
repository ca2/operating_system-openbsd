#pragma once


// GDK, GTK :: C

extern "C"
{


   void openbsd_g_direct_init();
   void openbsd_g_direct_term();
   //void * openbsd_g_direct_app_indicator_new(const char * pszId, const char * pszIcon, const char * pszFolder, struct user_notify_icon_bridge * pbridge);
   void openbsd_g_direct_step(void * pind);
   //void openbsd_g_direct_app_indicator_term(void * pind);


} // extern "C"




#include "xfce_shared.h"




