#pragma once


#include "operating_system-darwin/acme_posix/_.h"


#if defined(_acme_openbsd_project)
#define CLASS_DECL_ACME_OPENBSD  CLASS_DECL_EXPORT
#else
#define CLASS_DECL_ACME_OPENBSD  CLASS_DECL_IMPORT
#endif



CLASS_DECL_ACME_OPENBSD ::user::enum_desktop get_edesktop();




