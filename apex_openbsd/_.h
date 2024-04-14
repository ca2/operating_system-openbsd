#pragma once


#include "apex/_.h"
#include "apex_posix/_.h"
#include "acme_openbsd/_.h"


#if defined(_apex_openbsd_project)
#define CLASS_DECL_APEX_OPENBSD  CLASS_DECL_EXPORT
#else
#define CLASS_DECL_APEX_OPENBSD  CLASS_DECL_IMPORT
#endif


namespace apex_openbsd
{


   class dir_context;
   class dir_system;

   class file_context;
   class file_system;

   class node;


} // namespace apex_openbsd



