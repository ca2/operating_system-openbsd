cmake_minimum_required(VERSION 3.17)
project(node_openbsd CXX)


list(APPEND library_source
    _.cpp
    _.h
    _factory.cpp
    )


add_library(node_openbsd SHARED ${library_source})


list(APPEND library_references
   acme
   acme_openbsd
   aura_posix
   )


target_precompile_headers(node_openbsd PRIVATE framework.h)


set_target_properties(node_openbsd PROPERTIES LINKER_LANGUAGE CXX)


if (MSVC)


   target_compile_options(node_openbsd PRIVATE "/MD$<$<CONFIG:Debug>:d>")
   target_link_options(node_openbsd PRIVATE "/DEFAULTLIB:msvcrt$<$<CONFIG:Debug>:d>")
   target_link_options(node_openbsd PRIVATE "/IMPLIB:${LIBRARY_OUTPUT_PATH}/node_openbsd.lib")
   target_link_options(node_openbsd PRIVATE "/DEF:${CMAKE_CURRENT_SOURCE_DIR}/node_openbsd.def")
   target_link_libraries(node_openbsd PRIVATE ${library_references})


elseif(${OPENBSD})


   pkg_check_modules(PKGCONFIG x11)
   target_compile_options(node_openbsd PRIVATE ${PKGCONFIG_CFLAGS})
   target_link_options(node_openbsd PRIVATE ${PKGCONFIG_LDFLAGS})
   target_link_libraries(node_openbsd PRIVATE pthread ${library_references} ${global_library_references})
   target_link_options(node_openbsd PRIVATE -Wl,-z,defs)


endif()


target_include_directories(node_openbsd PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../..)
target_include_directories(node_openbsd PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/..)
target_include_directories(node_openbsd PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})


target_compile_definitions(node_openbsd PRIVATE _NODE_OPENBSD_LIBRARY)



