cmake_minimum_required(VERSION 3.17)
project(apex_openbsd CXX)


list(APPEND library_source
   _.cpp
   _.h
   _factory.cpp
   #crypto.cpp
   #crypto.h
   framework.cpp
   framework.h
   #interprocess_communication.cpp
   #interprocess_communication.h
   #ip_enum.cpp
   #ip_enum.h
   launcher.cpp
   launcher.h
   node.cpp
   node.h
   #os_context.cpp
   #os_context.h
   service_handler.cpp
   service_handler.h
   )


if(USE_KQUEUE_FILE_WATCHER_DIRECTLY)
   list(APPEND library_source
   kqueue/file_watcher.cpp
   kqueue/file_watcher.h
      )
endif()


list(APPEND library_references
	acme
	acme_posix
	acme_posix
	acme_openbsd
	apex
	apex_posix)

add_library(${PROJECT_NAME} SHARED ${library_source})
add_library(static_${PROJECT_NAME} STATIC ${library_source})



if (NOT ${NO_PRECOMPILED_HEADER})

    target_precompile_headers(${PROJECT_NAME} PRIVATE framework.h)
    target_precompile_headers(static_${PROJECT_NAME} PRIVATE framework.h)

endif ()




list(APPEND static_library_references ${library_references} ${global_library_references})

list(TRANSFORM static_library_references PREPEND static_)



set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE CXX)


if (MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE "/MD$<$<CONFIG:Debug>:d>")
    target_link_options(${PROJECT_NAME} PRIVATE "/DEFAULTLIB:msvcrt$<$<CONFIG:Debug>:d>")
    target_link_options(${PROJECT_NAME} PRIVATE "/IMPLIB:${LIBRARY_OUTPUT_PATH}/apex_openbsd.lib")
    target_link_options(${PROJECT_NAME} PRIVATE "/DEF:${CMAKE_CURRENT_SOURCE_DIR}/apex_openbsd.def")
    target_link_libraries(${PROJECT_NAME} PRIVATE acme apex aqua aura Gdiplus)
elseif(${OPENBSD})
    #pkg_check_modules(PKGCONFIG glib-2.0 gtk+-3.0 gdk-3.0 appindicator-0.1)
    #pkg_check_modules(PKGCONFIG glib-2.0 freetype2 gtk+-3.0 gdk-3.0)
    target_compile_options(${PROJECT_NAME} PRIVATE -fpermissive)
    target_compile_options(static_${PROJECT_NAME} PRIVATE -fpermissive)
    target_compile_definitions(static_${PROJECT_NAME} PRIVATE CUBE)


    target_compile_options(${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_CFLAGS})
    target_compile_options(static_${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_CFLAGS})
    target_link_options(${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_LDFLAGS})
    target_link_libraries(${PROJECT_NAME} PRIVATE ${library_references} ${global_library_references} ${${PROJECT_NAME}_PKGCONFIG_LIBRARIES})
    target_link_libraries(static_${PROJECT_NAME} PRIVATE ${static_library_references} ${${PROJECT_NAME}_PKGCONFIG_LIBRARIES})
    target_link_options(${PROJECT_NAME} PRIVATE -Wl,-z,defs)
    target_link_options(static_${PROJECT_NAME} PRIVATE --whole-archive)



endif ()


list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR})
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../../operating_system-posix)


target_include_directories(${PROJECT_NAME} PRIVATE ${library_include_directories})
target_include_directories(static_${PROJECT_NAME} PRIVATE ${library_include_directories})


target_compile_definitions(${PROJECT_NAME} PRIVATE _${PROJECT_NAME}_project)



