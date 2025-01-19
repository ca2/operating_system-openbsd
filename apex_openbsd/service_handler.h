#pragma once


#include "apex/parallelization/service_handler.h"


namespace apex_openbsd
{


   class CLASS_DECL_APEX_OPENBSD service_handler :
      virtual public ::service_handler
   {
   public:


      //__pointer(::service)       m_pservice;

      //SERVICE_STATUS             m_status;

      //SERVICE_STATUS_HANDLE      m_handle;

      static service_handler *   s_pservicehandler;

      unsigned int m_dwStopTimeout;
      

      //service_handler(unsigned int controlsAccepted = SERVICE_ACCEPT_PAUSE_CONTINUE | SERVICE_ACCEPT_STOP | SERVICE_ACCEPT_SHUTDOWN);
      service_handler();
      virtual ~service_handler();


      virtual void control_start(unsigned int uControl);

      virtual void control_stop(unsigned int uControl);

      virtual void _server();

      virtual void SetServiceStatus();

      //virtual void update_state(unsigned int state, HRESULT errorCode = S_OK);

      //virtual void _main_server(unsigned int argumentCount, wchar_t * arguments);

      //static void WINAPI ServiceMain(DWORD argumentCount, PWSTR * arguments);

      //static void WINAPI ServiceHandler(DWORD control);
      
      //virtual ::e_status queue_user_work_item(WINULONG flags = WT_EXECUTELONGFUNCTION);

      //static DWORD WINAPI thread_proc(void * pcontext);
      
      static void serve(service * pservice);

      //virtual void _main_server(unsigned int argumentCount, PWSTR * arguments);

      void defer_service();

      //virtual ::e_status enable_service();
      //virtual ::e_status disable_service();

      void start_service();
      void stop_service();


   };


} // namespace apex_openbsd



