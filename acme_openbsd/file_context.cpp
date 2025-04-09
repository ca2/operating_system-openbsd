#include "framework.h"
#include "file_context.h"
#include "acme/filesystem/filesystem/directory_system.h"


namespace acme_openbsd
{


   file_context::file_context()
   {

   }


   file_context::~file_context()
   {

   }


   void file_context::initialize(::particle * pparticle)
   {


      ::acme_posix::file_context::initialize(pparticle);

   }


   void file_context::init_system()
   {

      ::acme_posix::file_context::init_system();

   }


   void file_context::init_context()
   {

      ::acme_posix::file_context::init_context();


   }


 //  ::file::path file_context::dropbox_info_network_payload()
//   {
//
  //    ::file::path pathJson;

    //  pathJson = directory_system()->home() / ".dropbox/info.json";

      //return pathJson;

   //}


} // namespace acme_openbsd



