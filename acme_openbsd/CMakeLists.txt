cmake_minimum_required(VERSION 3.17)
project(acme_openbsd CXX)


list(APPEND library_source
   _.cpp
   _.h
   _factory.cpp
   #acme_directory.cpp
   #acme_directory.h
   #acme_file.cpp
   #acme_file.h
   #acme_path.cpp
   #acme_path.h
   directory_context.cpp
   directory_context.h
   directory_system.cpp
   directory_system.h
   file_context.cpp
   file_context.h
   file_system.cpp
   file_system.h
   #file.cpp
   #file.h
   framework.cpp
   framework.h
   node.cpp
   node.h
   node_processes_identifiers.cpp
   node_tell_whether_modules_are_loaded.cpp
   path_system.cpp
   path_system.h
   )
set_source_files_properties(node_processes_identifiers.cpp PROPERTIES SKIP_PRECOMPILE_HEADERS ON)




add_library(${PROJECT_NAME} SHARED ${library_source} )
add_library(static_${PROJECT_NAME} STATIC ${library_source} )


list(APPEND library_references
   acme
   acme_posix)


if (NOT ${NO_PRECOMPILED_HEADER})

    target_precompile_headers(${PROJECT_NAME} PRIVATE framework.h)
    target_precompile_headers(static_${PROJECT_NAME} PRIVATE framework.h)

endif ()



list(APPEND static_library_references ${library_references})

list(TRANSFORM static_library_references PREPEND static_)




set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE CXX)


if (MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE "/MD$<$<CONFIG:Debug>:d>")
    target_link_options(${PROJECT_NAME} PRIVATE "/DEFAULTLIB:msvcrt$<$<CONFIG:Debug>:d>")
    target_link_options(${PROJECT_NAME} PRIVATE "/IMPLIB:${LIBRARY_OUTPUT_PATH}/${PROJECT_NAME}.lib")
    target_link_options(${PROJECT_NAME} PRIVATE "/DEF:${CMAKE_CURRENT_SOURCE_DIR}/${PROJECT_NAME}.def")
    target_link_libraries(${PROJECT_NAME} PRIVATE acme apex aqua aura Gdiplus)
elseif(${OPENBSD})


    target_compile_options(${PROJECT_NAME} PRIVATE -fpermissive)
    target_compile_options(static_${PROJECT_NAME} PRIVATE -fpermissive)
    target_compile_definitions(static_${PROJECT_NAME} PRIVATE CUBE)


    target_compile_options(${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_CFLAGS} ${GLOBAL_EXTRA_COMPILER_FLAGS})
    target_compile_options(static_${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_CFLAGS})
    target_link_libraries(${PROJECT_NAME} PRIVATE ${library_references} ${global_library_references} ${${PROJECT_NAME}_PKGCONFIG_LIBRARIES})
    target_link_libraries(static_${PROJECT_NAME} PRIVATE ${static_library_references} ${${PROJECT_NAME}_PKGCONFIG_LIBRARIES})
    target_link_options(${PROJECT_NAME} PRIVATE ${${PROJECT_NAME}_PKGCONFIG_LDFLAGS} ${GLOBAL_EXTRA_LINKER_FLAGS} -Wl${GLOBAL_EXTRA_LINK_FLAGS},-z,defs)
    if(${LINUX})
    target_link_options(static_${PROJECT_NAME} PRIVATE --whole-archive)
    endif()


endif ()


list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR})
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../..)
list(APPEND library_include_directories ${CMAKE_CURRENT_SOURCE_DIR}/../../operating_system-posix)


target_include_directories(${PROJECT_NAME} PRIVATE ${library_include_directories})
target_include_directories(static_${PROJECT_NAME} PRIVATE ${library_include_directories})




target_compile_definitions(${PROJECT_NAME} PRIVATE _${PROJECT_NAME}_project)
target_compile_definitions(${PROJECT_NAME} PRIVATE UNICODE)
target_compile_definitions(${PROJECT_NAME} PRIVATE _UNICODE)



