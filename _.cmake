

message(STATUS "CMAKE_SYSTEM_NAME is ${CMAKE_SYSTEM_NAME}")

#FIND_PACKAGE(PkgConfig)

#include(FindPkgConfig)

#IF(PKG_CONFIG_FOUND)
    # use pkg_check_modules()
#ENDIF(PKG_CONFIG_FOUND)
set(USE_PKGCONFIG TRUE)
set(NO_PRECOMPILED_HEADER TRUE)
set(PLATFORM_NAME "freebsd")

#set(GLOBAL_EXTRA_COMPILER_FLAGS -fnon-call-exceptions -nostdinc -nostdinc++ -I/usr/include/c++/v1 -I/usr/include -I/usr/local/include)
#set(GLOBAL_EXTRA_LINKER_FLAGS -nodefaultlibs -lc++ -lcxxrt -lthr -lm -lc -lgcc_s)
#set(GLOBAL_EXTRA_LINKER_FLAGS -L/usr/lib)

if ("${CMAKE_BUILD_TYPE}" STREQUAL "")

    set(CMAKE_BUILD_TYPE Debug)

endif()


if (NOT ${CMAKE_SYSTEM_NAME} STREQUAL "FreeBSD")

    error("This file is designed to be used only for FreeBSD systems...")

endif ()


if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")

    SET(CMAKE_CXX_FLAGS "-fPIC -fexceptions -fnon-call-exceptions -frtti")

endif ()


#set(DONT_USE_PKG_CONFIG NOT PKG_CONFIG_FOUND)
set(DONT_USE_PKG_CONFIG FALSE)


if ($ENV{XDG_CURRENT_DESKTOP} STREQUAL "KDE")
    set(KDE_DESKTOP TRUE)
    message(STATUS "System is KDE")
    set(DESKTOP_ENVIRONMENT_NAME "kde")
elseif ($ENV{XDG_CURRENT_DESKTOP} STREQUAL "ubuntu:GNOME")
    set(GNOME_DESKTOP TRUE)
    message(STATUS "System is GNOME")
    set(DESKTOP_ENVIRONMENT_NAME "gnome")
elseif ($ENV{XDG_CURRENT_DESKTOP} STREQUAL "GNOME")
    set(GNOME_DESKTOP TRUE)
    message(STATUS "System is GNOME")
    set(DESKTOP_ENVIRONMENT_NAME "gnome")
elseif ($ENV{XDG_CURRENT_DESKTOP} STREQUAL "LXDE")
    set(LXDE_DESKTOP TRUE)
    message(STATUS "System is LXDE")
    set(DESKTOP_ENVIRONMENT_NAME "lxde")
endif ()

message(STATUS "DESKTOP_ENVIRONMENT_NAME is ${DESKTOP_ENVIRONMENT_NAME}")

set(UNDERSCORE_OPERATING_SYSTEM $ENV{__SYSTEM_UNDERSCORE_OPERATING_SYSTEM})
set(SLASHED_OPERATING_SYSTEM $ENV{__SYSTEM_SLASHED_OPERATING_SYSTEM})
set(OPERATING_SYSTEM $ENV{__OPERATING_SYSTEM})
set(OPERATING_SYSTEM_RELEASE $ENV{__OPERATING_SYSTEM_RELEASE})


string(TOLOWER ${CMAKE_BUILD_TYPE} tolower_cmake_build_type)


message(STATUS "tolower_cmake_build_type = ${tolower_cmake_build_type}")


if (${tolower_cmake_build_type} STREQUAL "debug")

    message(STATUS "Debug Build!!")

    add_compile_definitions(DEBUG)

    message(STATUS "DEBUG compile definition set!!")

elseif (${tolower_cmake_build_type} STREQUAL "relwithdebinfo")

    message(STATUS "RelWithDebInfo Build!!")

    add_compile_definitions(DEBUG)

    message(STATUS "DEBUG compile definition set!!")

elseif (${tolower_cmake_build_type} STREQUAL "release")

    message(STATUS "Release Build!!")

    add_compile_definitions(NDEBUG)

    message(STATUS "NDEBUG compile definition set!!")

elseif (${tolower_cmake_build_type} STREQUAL "minsizerel")

    message(STATUS "MinSizeRel Build!!")

    add_compile_definitions(NDEBUG)

    message(STATUS "NDEBUG compile definition set!!")

else ()

    message(STATUS "\"${CMAKE_BUILD_TYPE}\" Build!!")

    add_compile_definitions(DEBUG)

    message(STATUS "DEBUG compile definition set!!")

endif ()


SET(CMAKE_SKIP_BUILD_RPATH FALSE)
SET(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH $ORIGIN)
#set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

set(OPERATING_SYSTEM_NAME "freebsd")
set(OPERATING_SYSTEM_POSIX TRUE)
set(FILE_SYSTEM_INOTIFY TRUE)
set(POSIX_SPAWN TRUE)
set(POSIX_LIST_SERIAL_PORTS TRUE)
set(WITH_X11 TRUE)
set(WITH_XCB TRUE)
set(WITH_XI TRUE)
set(USE_OPENSSL TRUE)
set(PTHREAD TRUE)


#message(STATUS "DISTRO is ${DISTRO}")

if (${OPERATING_SYSTEM} STREQUAL "freebsd")

    set(BSD_LIKE TRUE)

    add_compile_definitions(FREEBSD)

    message(STATUS "FREEBSD has been set TRUE")

    set(APPINDICATOR_PKG_MODULE "ayatana-appindicator3-0.1")

    set(MPG123_PKG_MODULE "libmpg123")

elseif (${OPERATING_SYSTEM} STREQUAL "netbsd")

    set(NETBSD TRUE)

    add_compile_definitions(NETBSD)

    message(STATUS "NETBSD has been set TRUE")

    set(APPINDICATOR_PKG_MODULE "ayatana-appindicator3-0.1")

    set(MPG123_PKG_MODULE "libmpg123")

elseif ("${OPERATING_SYSTEM}" STREQUAL "openbsd")

    set(OPENBSD TRUE)

    set(BSD_LIKE TRUE)

    set(DONT_USE_PKG_CONFIG FALSE)

    add_compile_definitions(OPENBSD)

    message(STATUS "RASPBERRYPIOS defined!!")

else ()

    set(APPINDICATOR_PKG_MODULE "appindicator3-0.1")

    set(MPG123_PKG_MODULE "mpg123")

endif ()

message(STATUS "DISTRO_RELEASE is ${DISTRO_RELEASE}")

set(MIDI FALSE)
set(ALSA_MIDI FALSE)
set(INTERPROCESS_COMMUNICATION_SYSTEM_5 TRUE)

add_compile_definitions(WITH_X11)
add_compile_definitions(WITH_SN)
add_compile_definitions(WITH_XI)
link_libraries(pthread)
include(FindPkgConfig)

if (EXISTS $ENV{HOME}/__config/xfce.txt)

    set(LINUX_XFCE TRUE)
    message(STATUS "Adding Xfce/X11 dependency.")

endif ()

if (KDE_DESKTOP)

    set(WITH_XCB TRUE)
    add_compile_definitions(WITH_XCB=1)

    set(QT_MIN_VERSION "5.3.0")
    set(KF5_MIN_VERSION "5.2.0")

    # apt install extra-cmake-modules
    # dnf install extra-cmake-modules
    find_package(ECM 1.0.0 REQUIRED NO_MODULE)
    set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH} ${ECM_KDE_MODULE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

    # apt install libkf5notifications-dev
    # dnf install kf5-knotifications-devel

    #include(KDEInstallDirs)
    #include(KDECMakeSettings)
    #include(KDECompilerSettings NO_POLICY_SCOPE)
    #    find_package(KF5 ${KF5_MIN_VERSION} REQUIRED COMPONENTS
    # CoreAddons      # KAboutData
    #          I18n            # KLocalizedString
    #         WidgetsAddons   # KMessageBox
    #      Notifications
    #     )
    #include(FeatureSummary)

    # Find Qt modules
    #find_package(Qt5 ${QT_MIN_VERSION} CONFIG REQUIRED COMPONENTS
    #  Core    # QCommandLineParser, QStringLiteral
    #  Widgets # QApplication
    #  )
    find_package(KF5 ${KF5_MIN_VERSION} REQUIRED COMPONENTS
            # CoreAddons      # KAboutData
            #          I18n            # KLocalizedString
            #         WidgetsAddons   # KMessageBox
            CoreAddons
            Notifications
            ConfigWidgets
            KIO
            IconThemes
            )

    find_package(LibKWorkspace CONFIG REQUIRED)

    find_package(Qt5 ${QT_MIN_VERSION} REQUIRED COMPONENTS
            Core
            DBus
            UiTools
            X11Extras
            )

    # Find KDE modules

    #feature_summary(WHAT ALL INCLUDE_QUIET_PACKAGES FATAL_ON_MISSING_REQUIRED_PACKAGES)
    #        find_package(KDE5 REQUIRED)
    message(STATUS "Adding KDE/xcb dependency.")
    #        file (STRINGS $ENV{HOME}/__config/knotifications/cflags.txt knotifications_cflags)
    #        file (STRINGS $ENV{HOME}/__config/knotifications/libs.txt knotifications_libs)
    #        if(knotifications_cflags STREQUAL "")
    #            set(knotifications_cflags -I/usr/include/KF5/KNotifications)
    #        endif()
    #        if(knotifications_libs STREQUAL "")
    #            set(knotifications_cflags -I/usr/include/KF5/KNotifications)
    #        endif()
endif ()

set(default_draw2d "draw2d_cairo")
set(default_imaging "imaging_freeimage")
set(default_write_text "write_text_pango")
set(default_audio "audio_alsa")
set(default_music_midi "music_midi_alsa")
set(default_node "node_freebsd")
set(default_audio_mixer "audio_mixer_alsa")
set(default_gpu "gpu_opengl")
#add_compile_definitions(default_draw2d=draw2d_cairo)
#add_compile_definitions(default_imaging=imaging_freeimage)
#add_compile_definitions(default_write_text=write_text_pango)
#add_compile_definitions(default_audio=audio_alsa)
#add_compile_definitions(default_music_midi=music_midi_alsa)
#add_compile_definitions(default_node=node_linux)


if (LXDE_DESKTOP)

    list(APPEND app_common_dependencies
            desktop_environment_gnome)

#    list(APPEND static_app_common_dependencies
#            static_desktop_environment_gnome
#            static_node_gnome
#            static_node_gtk
#            static_windowing_x11)

    set(default_windowing "windowing_x11")

    add_compile_definitions(DESKTOP_ENVIRONMENT_GNOME)

    add_compile_definitions(default_windowing=windowing_x11)

endif ()


if (XFCE_DESKTOP)

    list(APPEND app_common_dependencies
            desktop_environment_xfce)

    list(APPEND static_app_common_dependencies
            static_desktop_environment_xfce)

    set(default_windowing "windowing_x11")

    add_compile_definitions(DESKTOP_ENVIRONMENT_XFCE)

    add_compile_definitions(default_windowing=windowing_x11)

endif ()


if (GNOME_DESKTOP)


    message(STATUS "Adding GNOME/X11 dependency.")

    list(APPEND app_common_dependencies
            desktop_environment_gnome)


    list(APPEND static_app_common_dependencies
            static_desktop_environment_gnome
            static_node_gnome
            static_node_gtk
            static_node_linux
            static_windowing_x11)

    set(default_windowing "windowing_x11")

    add_compile_definitions(DESKTOP_ENVIRONMENT_GNOME)

endif ()


if (KDE_DESKTOP)

    list(APPEND app_common_dependencies
            desktop_environment_kde)

#    list(APPEND static_app_common_dependencies
#            static_desktop_environment_kde
#            static_node_kde
#            static_windowing_xcb
#            KF5::Notifications
#            KF5::ConfigWidgets
#            KF5::IconThemes
#            KF5::KIOCore
#            KF5::KIOFileWidgets
#            KF5::KIOWidgets
#            KF5::KIONTLM
#            PW::KWorkspace
#            )

    set(default_windowing "windowing_xcb")

    add_compile_definitions(DESKTOP_ENVIRONMENT_KDE)

    add_compile_definitions(default_windowing=windowing_xcb)

endif ()


#set(static_acme_extra_pkgconfig cairo xcb x11 xkbcommon xcb-render xcb-aux x11-xcb)
#set(static_aura_posix_pkgconfig libstartup-notification-1.0)
#
#set(static_acme_pkgconfig freetype2 libidn ${static_acme_extra_pkgconfig} ncurses dbus-glib-1)
#set(static_apex_pkgconfig libcrypto libssl libarchive)
#set(static_database_cairo_pkgconfig freetype2 pango cairo pangocairo)
#set(static_database_sqlite3_pkgconfig sqlite3)
#set(static_mpg123_pkgconfig ${MPG123_PKG_MODULE})
#set(static_desktop_environment_gnome_pkgconfig glib-2.0 gtk+-3.0 gdk-3.0 ${APPINDICATOR_PKG_MODULE})
#set(static_desktop_environment_kde_pkgconfig Qt5X11Extras Qt5Core Qt5UiTools)

#if (KDE_DESKTOP)
#    set(static_desktop_environment_pkgconfig ${static_desktop_environment_kde_pkgconfig})
#elseif (GNOME_DESKTOP)
#    set(static_desktop_environment_pkgconfig ${static_desktop_environment_gnome_pkgconfig})
#else ()
#    set(static_desktop_environment_pkgconfig ${static_desktop_environment_gnome_pkgconfig})
#endif()
#


set(LIBCXX_TARGETING_MSVC OFF)


add_compile_definitions(UNICODE)
add_compile_definitions(_UNICODE)


#list(APPEND app_common_dependencies _console_application_build_helper)


#set(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/time-${OPERATING_SYSTEM_NAME}/x64/basis)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/output)
#set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/time-${OPERATING_SYSTEM_NAME}/x64/basis)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/output)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/library)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)


link_directories(${LIBRARY_OUTPUT_PATH})
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/operating_system/storage-${OPERATING_SYSTEM_NAME}/library/x64/basis)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/operating_system/storage-${OPERATING_SYSTEM_NAME}/third/library/x64/basis)


include_directories(${WORKSPACE_FOLDER})
include_directories($ENV{HOME}/__config)
include_directories(${WORKSPACE_FOLDER}/source)
include_directories(${WORKSPACE_FOLDER}/source/app)
include_directories(${WORKSPACE_FOLDER}/source/app/include)
include_directories(${WORKSPACE_FOLDER}/source/include)
include_directories(${WORKSPACE_FOLDER}/port/_)
include_directories(${WORKSPACE_FOLDER}/port/include)
include_directories(${WORKSPACE_FOLDER}/operating_system)
if (OPERATING_SYSTEM_POSIX)
    include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-posix)
    include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-posix/include)
endif ()
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME})
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME}/include)
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME}/configuration)
include_directories(${WORKSPACE_FOLDER}/operating_system/operating_system-${OPERATING_SYSTEM_NAME}/operating_system/${SLASHED_OPERATING_SYSTEM})


set(INCLUDE_DRAW2D_CAIRO TRUE)
set(INCLUDE_IMAGING_FREEIMAGE TRUE)


set(STORE_FOLDER $ENV{HOME}/store/${SLASHED_OPERATING_SYSTEM})




