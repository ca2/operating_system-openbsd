#pragma once


#include "apex/filesystem/filesystem/dir_system.h"


namespace apex_openbsd
{


   class CLASS_DECL_APEX_OPENBSD dir_system :
      virtual public ::dir_system
   {
   public:


      dir_system();
      ~dir_system() override;


      void initialize(::particle * pparticle) override;


      void init_system() override;


   };


} // namespace apex_openbsd



