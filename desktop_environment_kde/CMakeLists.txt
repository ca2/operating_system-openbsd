cmake_minimum_required(VERSION 3.17)
project(desktop_environment_kde CXX)


list(APPEND library_source
   _.cpp
   _.h
        _desktop_environment_kde.h
   #appindicator.cpp
   #appindicator.h
   #application.cpp
   #application.h
   #clipboard_data.h
   #copydesk.cpp
   #copydesk.h
   #enum_display_monitors.cpp
   _factory.cpp

   #framework.cpp
   #framework.h
   #gdk.cpp
   #gdk.h
   #gnome_direct.cpp
   #gtk_clipboard.cpp
   node.cpp
   node.h
   #node_impl.cpp
   #node_impl.h
   #q_node_impl.cpp
   #q_node_impl.h
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
   windowing_xcb
   node_kde
   )


#set_source_files_properties(q_node_impl.cpp PROPERTIES SKIP_PRECOMPILE_HEADERS ON)

add_library(desktop_environment_kde SHARED ${library_source} )

target_precompile_headers(desktop_environment_kde PRIVATE framework.h)

set_target_properties(desktop_environment_kde PROPERTIES LINKER_LANGUAGE CXX)


if (MSVC)
   target_compile_options(desktop_environment_kde PRIVATE "/MD$<$<CONFIG:Debug>:d>")
   target_link_options(desktop_environment_kde PRIVATE "/DEFAULTLIB:msvcrt$<$<CONFIG:Debug>:d>")
   target_link_options(desktop_environment_kde PRIVATE "/SUBSYSTEM:WINDOWS")
   target_link_libraries(desktop_environment_kde PRIVATE ${library_references} ${global_library_references})
elseif(OPENBSD OR OPENBSD)
   pkg_check_modules(PKGCONFIG Qt5X11Extras Qt5Core Qt5UiTools)
   target_compile_options(desktop_environment_kde PRIVATE -fpermissive)
      target_compile_options(desktop_environment_kde PRIVATE ${PKGCONFIG_CFLAGS})
   target_link_options(desktop_environment_kde PRIVATE ${PKGCONFIG_LDFLAGS})
   if(KDE_DESKTOP)
      target_include_directories(desktop_environment_kde PRIVATE KF5::Notifications)
   endif()
   #target_link_options(${PROJECT_NAME} PRIVATE "-Wl,-rpath=\$ORIGIN")
   target_link_libraries(desktop_environment_kde PRIVATE ${library_references} ${global_library_references} ${PKGCONFIG_LIBRARIES})
   if(KDE_DESKTOP)
      target_link_libraries(desktop_environment_kde PRIVATE KF5::Notifications)
   endif()
   target_link_options(desktop_environment_kde PRIVATE -Wl,-z,defs)
endif ()

list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR})
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../../operating_system-posix)


target_include_directories(${PROJECT_NAME} PRIVATE ${library_include_directories})
target_include_directories(static_${PROJECT_NAME} PRIVATE ${library_include_directories})

target_compile_definitions(desktop_environment_kde PRIVATE _MUSIC_MIDI_ALSA_LIBRARY)



