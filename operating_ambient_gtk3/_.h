#pragma once


#include "aura_openbsd/_.h"
#include "node_gtk3/_.h"


#if defined(_OPERATING_AMBIENT_GTK3_LIBRARY)
   #define CLASS_DECL_OPERATING_AMBIENT_GTK3  CLASS_DECL_EXPORT
#else
   #define CLASS_DECL_OPERATING_AMBIENT_GTK3  CLASS_DECL_IMPORT
#endif


namespace operating_ambient_gtk3
{


   class node;


} // namespace operating_ambient_gtk3



