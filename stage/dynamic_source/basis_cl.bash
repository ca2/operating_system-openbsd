#!/bin/bash


function build()
{
	
	cd %CA2_ROOT%platform/seed/metaseed


g++ -std=c++0x -fPIC -fexceptions -fnon-call-exceptions -fno-pie -fno-stack-protector -Wno-pointer-arith -Wno-attributes -Winvalid-pch  -g -D_DEBUG    -I../../../app-core/appseed/netnode_dynamic_source_script -I../../../app/thirdparty/appseed -I. -I.. -I../.. -I../aura -I../../platform/openbsd -I../../platform/openbsd/include -I../../.. -I../../../app/appseed -I../../../app/appseed/boot -I../../../app/appseed/aura -I../../../app/thirdparty/include  -I/netnodenet/net/netseed/include -I"%CA2_ROOT%time/dynamic_source/library/include" -c "%CA2_ROOT%time/dynamic_source%ITEM_NAME%.cpp" -o "%CA2_ROOT%time/intermediate/%PLATFORM%/netnode_dynamic_source_script%ITEM_NAME%/%ITEM_TITLE%.o" &> "%CA2_ROOT%time/dynamic_source%ITEM_NAME%-compile-log.txt"

g++ -shared -L"%CA2_ROOT%stage/x86/"  "%CA2_ROOT%time/intermediate/%PLATFORM%/netnode_dynamic_source_script/framework.o" "%CA2_ROOT%time/intermediate/%PLATFORM%/netnode_dynamic_source_script/netnode_dynamic_source_script.o" "%CA2_ROOT%time/intermediate/%PLATFORM%/netnode_dynamic_source_script%ITEM_NAME%/%ITEM_TITLE%.o" -o "%TARGET_PATH%.so" -Wl,-rpath,\\$ORIGIN -Wl,-E -ldl -lpthread -lbase -lbaseopenssl -lbasezlib -lbasefreeimage -lbasefreetype -lbasepixman -lbasecairo -lboot -lcore -lX11 -lXmu -lnetnode -lnetnodelibrary -lapp_core_alarm -Wl,-z,defs &> "%CA2_ROOT%time/dynamic_source%ITEM_NAME%-link-log.txt"


}


build
