#include "framework.h"


extern "C"
void node_openbsd_factory(::factory::factory * pfactory)
{

   add_factory_item < node_openbsd::node, ::acme::node >();

}



