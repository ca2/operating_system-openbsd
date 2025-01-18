#include "framework.h"
#include "directory_context.h"
#include "acme/filesystem/filesystem/listing.h"


namespace acme_openbsd
{


   directory_context::directory_context()
   {


   }


   directory_context::~directory_context()
   {


   }


   void directory_context::initialize(::particle * pparticle)
   {

      ::acme_posix::directory_context::initialize(pparticle);

   }


   void directory_context::init_system()
   {

      ::acme_posix::directory_context::init_system();

   }


   void directory_context::init_context()
   {

      ::acme_posix::directory_context::init_context();

   }


   ::file::listing& directory_context::root_ones(::file::listing& listing)
   {

      ::file::path path;

      path = "/";

      listing.defer_add(path);

      return listing;

   }


} // namespace acme_openbsd



