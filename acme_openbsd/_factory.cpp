#include "framework.h"
#include "node.h"
#include "acme_directory.h"
#include "acme_file.h"
#include "acme_path.h"
//#include "file.h"


__FACTORY_EXPORT void acme_posix_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void acme_openbsd_factory(::factory::factory * pfactory)
{

   acme_posix_factory(pfactory);

   pfactory->add_factory_item < ::acme_openbsd::node, ::acme::node >();
   pfactory->add_factory_item < ::acme_openbsd::acme_directory, ::acme_directory >();
   pfactory->add_factory_item < ::acme_openbsd::acme_file, ::acme_file >();
   pfactory->add_factory_item < ::acme_openbsd::acme_path, ::acme_path >();


//   pfactory->add_factory_item < ::acme_openbsd::file, ::file::file >();


}


