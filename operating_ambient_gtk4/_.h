#pragma once


#include "aura_openbsd/_.h"
#include "node_gtk_based/_.h"


#if defined(_DESKTOP_ENVIRONMENT_GTK_BASED_LIBRARY)
   #define CLASS_DECL_DESKTOP_ENVIRONMENT_GTK_BASED  CLASS_DECL_EXPORT
#else
   #define CLASS_DECL_DESKTOP_ENVIRONMENT_GTK_BASED  CLASS_DECL_IMPORT
#endif


namespace desktop_environment_gtk_based
{


   class node;


} // namespace node_gtk_based



