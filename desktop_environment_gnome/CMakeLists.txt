cmake_minimum_required(VERSION 3.17)
project(desktop_environment_gnome CXX)


list(APPEND library_source
   _.cpp
   _.h
   #        _desktop_environment_gnome.h
   #appindicator.cpp
   #appindicator.h
   #application.cpp
   #application.h
   #clipboard_data.h
   #copydesk.cpp
   #copydesk.h
   #display.cpp
   #display.h
   #enum_display_monitors.cpp
   _factory.cpp
   framework.cpp
   framework.h
   #gdk.cpp
   #gdk.h
   #gnome_direct.cpp
   #gtk_clipboard.cpp
   #monitor.cpp
   #monitor.h
   node.cpp
   node.h
   #notify_icon.cpp
   #windowing.cpp
   #windowing.h
   )


list(APPEND library_references
   acme
   acme_posix
   acme_openbsd
   apex
   apex_posix
   apex_openbsd
   aqua
   aura
   aura_posix
   aura_openbsd
   windowing_x11
   #node_gtk
   node_gnome
   )

if(${HAS_GTK4})
    list(APPEND library_references node_gtk4)
elseif(${HAS_GTK3})
    list(APPEND library_references node_gtk3)
endif()

add_library(desktop_environment_gnome SHARED ${library_source})

target_precompile_headers(desktop_environment_gnome PRIVATE framework.h)

set_target_properties(desktop_environment_gnome PROPERTIES LINKER_LANGUAGE CXX)


if (MSVC)
   target_compile_options(desktop_environment_gnome PRIVATE "/MD$<$<CONFIG:Debug>:d>")
   target_link_options(desktop_environment_gnome PRIVATE "/DEFAULTLIB:msvcrt$<$<CONFIG:Debug>:d>")
   target_link_options(desktop_environment_gnome PRIVATE "/SUBSYSTEM:WINDOWS")
   target_link_libraries(desktop_environment_gnome PRIVATE ${library_references})
elseif (${OPENBSD})
   pkg_check_modules(PKGCONFIG glib-2.0 gtk+-3.0 gdk-3.0 ${APPINDICATOR_PKG_MODULE})
   target_compile_options(desktop_environment_gnome PRIVATE -fpermissive)
   target_compile_options(desktop_environment_gnome PRIVATE ${PKGCONFIG_CFLAGS})
   target_link_options(desktop_environment_gnome PRIVATE ${PKGCONFIG_LDFLAGS})
   #target_link_options(${PROJECT_NAME} PRIVATE "-Wl,-rpath=\$ORIGIN")
   target_link_libraries(desktop_environment_gnome PRIVATE ${library_references} ${PKGCONFIG_LIBRARIES} ${global_library_references})
   target_link_options(desktop_environment_gnome PRIVATE -Wl,-z,defs)
endif ()

list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR})
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../../operating_system-posix)


target_include_directories(${PROJECT_NAME} PRIVATE ${library_include_directories})
#target_include_directories(static_${PROJECT_NAME} PRIVATE ${library_include_directories})

target_compile_definitions(desktop_environment_gnome PRIVATE _desktop_environment_gnome_project)
target_compile_definitions(desktop_environment_gnome PRIVATE UNICODE)
target_compile_definitions(desktop_environment_gnome PRIVATE _UNICODE)



