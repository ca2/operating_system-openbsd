#pragma once


#include "acme/filesystem/filesystem/file_system.h"


namespace acme_openbsd
{


   class CLASS_DECL_ACME_OPENBSD file_system:
      virtual public ::file_system
   {
   public:


      file_system();
      ~file_system() override;


      void initialize(::particle * pparticle) override;


      void init_system() override;


   };


} // namespace acme_openbsd



