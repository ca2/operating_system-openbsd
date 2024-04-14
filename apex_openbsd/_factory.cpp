#include "framework.h"
#include "apex/platform/launcher.h"
#include "launcher.h"
#include "dir_system.h"
#include "file_system.h"
#include "dir_context.h"
#include "file_context.h"
#include "os_context.h"
//#include "ip_enum.h"
//#include "interprocess_communication.h"
#include "file_context.h"
#include "service_handler.h"
#include "node.h"
#include "apex/parallelization/service.h"
#include "apex/parallelization/service_handler.h"
#include "service_handler.h"


DECLARE_FACTORY(apex_darwin);


DECLARE_FACTORY(acme_openbsd);


IMPLEMENT_FACTORY(apex_openbsd)
{

   apex_darwin_factory(pfactory);

   acme_openbsd_factory(pfactory);

   pfactory->add_factory_item < ::apex_openbsd::dir_system, ::dir_system >();
   pfactory->add_factory_item < ::apex_openbsd::file_system, ::file_system >();

   pfactory->add_factory_item < ::apex_openbsd::dir_context, ::dir_context >();
   pfactory->add_factory_item < ::apex_openbsd::file_context, ::file_context >();

   //add_factory_item < ::openbsd::stdio_file, ::file::text_file >();
   //add_factory_item < ::openbsd::file, ::file::file >();
   pfactory->add_factory_item < ::apex_openbsd::os_context, ::os_context >();
   //pfactory->add_factory_item < ::openbsd::pipe, ::process::pipe >();
   //pfactory->add_factory_item < ::openbsd::process, ::process::process >();

   //add_factory_item < ::openbsd::console, ::console::console >();
   //pfactory->add_factory_item < ::openbsd::crypto, ::crypto::crypto >();
   //pfactory->add_factory_item < ::apex_openbsd::ip_enum, ::networking::ip_enum >();


   //pfactory->add_factory_item < ::apex_openbsd::interprocess_communication_base, ::interprocess_communication::base >();
   //pfactory->add_factory_item < ::apex_openbsd::interprocess_communication_rx, ::interprocess_communication::rx >();
   //pfactory->add_factory_item < ::apex_openbsd::interprocess_communication_tx, ::interprocess_communication::tx >();
   //add_factory_item < ::openbsd::interprocess_communication, ::interprocess_communication::interprocess_communication >();


   //add_factory_item < ::openbsd::buffer, ::graphics::graphics >();
   //add_factory_item < ::openbsd::interaction_impl, ::user::interaction_impl >();

   //pfactory->add_factory_item < ::file::os_watcher, ::file::watcher >();
   //pfactory->add_factory_item < ::file::os_watch, ::file::watch >();

   //pfactory->add_factory_item < ::apex_openbsd::file_context, ::file_context >();
   pfactory->add_factory_item < ::apex_openbsd::service_handler, ::service_handler >();

   pfactory->add_factory_item < ::apex_openbsd::node, ::acme::node >();

   //add_factory_item < ::openbsd::copydesk, ::user::cop
   // 
   // 
   // ydesk >();
   ////add_factory_item < ::openbsd::shell, ::user::shell >();


}




