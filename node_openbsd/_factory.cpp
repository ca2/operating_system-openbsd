#include "framework.h"
#include "acme/platform/system.h"


namespace nano::user
{


::user::enum_desktop get_edesktop();


} // namespace nano::user


__FACTORY_EXPORT void node_openbsd_factory(::factory::factory * pfactory)
{

   auto edesktop = ::nano::user::get_edesktop();

   ::e_status estatus = ::success_none;

   if (edesktop & ::user::e_desktop_kde)
   {

      auto & pfactoryKde = pfactory->system()->factory("desktop_environment", "kde");

      pfactoryKde->merge_to_global_factory();

   }
   else if (edesktop & ::user::e_desktop_gnome)
   {

      auto & pfactoryGnome = pfactory->system()->factory("desktop_environment", "gtk_based");

      pfactoryGnome->merge_to_global_factory();

   }
   else if (edesktop & ::user::e_desktop_xfce)
   {

      auto & pfactoryXfce = pfactory->system()->factory("desktop_environment", "xfce");

      pfactoryXfce->merge_to_global_factory();

   }
   else
   {

      auto & pfactoryGnome = pfactory->system()->factory("desktop_environment", "gtk_based");

      if (!pfactoryGnome)
      {

         auto & pfactoryKde = pfactory->system()->factory("desktop_environment", "kde");

         if (!pfactoryKde)
         {

            auto & pfactoryXfce = pfactory->system()->factory("desktop_environment", "xfce");

            if (!pfactoryXfce)
            {

               output_debug_string("No desktop_environment_*\n");

            }
            else
            {

               pfactoryXfce->merge_to_global_factory();

            }

         }
         else
         {

            pfactoryKde->merge_to_global_factory();

         }

      }
      else
      {

         pfactoryGnome->merge_to_global_factory();

      }

   }
//
//#else
//
//      estatus = factory("aura", "windows");
//
//#endif


//      apex_openbsd_factory( pfactory);
//
//   aura_posix_factory( pfactory);
//
//   pfactory->add_factory_item < ::aura::openbsd::node, ::acme::node >();

}



