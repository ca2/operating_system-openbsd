#include "framework.h"
#include "node.h"


__FACTORY_IMPORT void aura_openbsd_factory(::factory::factory * pfactory);


__FACTORY_IMPORT void node_gtk3_factory(::factory::factory * pfactory);


__FACTORY_EXPORT void operating_ambient_gtk3_factory(::factory::factory * pfactory)
{
   
   aura_openbsd_factory(pfactory);

   node_gtk3_factory(pfactory);

   pfactory->add_factory_item < ::operating_ambient_gtk3::node, ::platform::node > ();


}



