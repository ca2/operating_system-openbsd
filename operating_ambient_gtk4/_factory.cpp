#include "framework.h"
#include "node.h"


__FACTORY_EXPORT void aura_openbsd_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void node_gtk4_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void operating_ambient_gtk4_factory(::factory::factory * pfactory)
{

   aura_openbsd_factory(pfactory);

   node_gtk4_factory(pfactory);

   pfactory->add_factory_item < ::operating_ambient_gtk4::node, ::platform::node > ();


}



