#pragma once


#include "acme/filesystem/filesystem/dir_system.h"


namespace acme_openbsd
{


   class CLASS_DECL_ACME_OPENBSD dir_system :
      virtual public ::dir_system
   {
   public:


      dir_system();
      ~dir_system() override;


      void initialize(::particle * pparticle) override;


      void init_system() override;


   };


} // namespace acme_openbsd



