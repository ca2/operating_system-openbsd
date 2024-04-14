#pragma once


#include "aura/_.h"
#include "aura_posix/_.h"
#include "apex_openbsd/_.h"


#if defined(_AURA_OPENBSD_LIBRARY)
#define CLASS_DECL_AURA_OPENBSD  CLASS_DECL_EXPORT
#else
#define CLASS_DECL_AURA_OPENBSD  CLASS_DECL_IMPORT
#endif



