#include "framework.h"
#include "node.h"
#include "directory_system.h"
#include "file_system.h"
#include "path_system.h"
//#include "dir_system.h"
//#include "file_system.h"
#include "directory_context.h"
#include "file_context.h"
//#include "file.h"


__FACTORY_EXPORT void acme_posix_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void acme_openbsd_factory(::factory::factory * pfactory)
{

   acme_posix_factory(pfactory);

   pfactory->add_factory_item < ::acme_openbsd::node, ::platform::node >();
   //pfactory->add_factory_item < ::acme_openbsd::directory_system, ::directory_system >();
   //pfactory->add_factory_item < ::acme_openbsd::file_system, ::file_system >();
   //pfactory->add_factory_item < ::acme_openbsd::path_system, ::path_system >();
   
   pfactory->add_factory_item < ::acme_openbsd::path_system, ::path_system >();
   
   pfactory->add_factory_item < ::acme_openbsd::directory_system, ::directory_system >();
   pfactory->add_factory_item < ::acme_openbsd::file_system, ::file_system >();

   pfactory->add_factory_item < ::acme_openbsd::directory_context, ::directory_context >();
   pfactory->add_factory_item < ::acme_openbsd::file_context, ::file_context >();

//   pfactory->add_factory_item < ::acme_openbsd::file, ::file::file >();


}


