#pragma once


#include "node_openbsd/_.h"
#include "node_gtk4/_.h"


#if defined(_operating_ambient_gtk4_project)
   #define CLASS_DECL_OPERATING_AMBIENT_GTK4  CLASS_DECL_EXPORT
#else
   #define CLASS_DECL_OPERATING_AMBIENT_GTK4  CLASS_DECL_IMPORT
#endif


namespace operating_ambient_gtk4
{


   class node;


} // namespace operating_ambient_gtk4



