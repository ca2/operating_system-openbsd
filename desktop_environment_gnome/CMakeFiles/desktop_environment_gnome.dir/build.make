# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/camilo/cmake/integration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/camilo/cmake/integration

# Include any dependencies generated for this target.
include operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/compiler_depend.make

# Include the progress variables for this target.
include operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/progress.make

# Include the compile flags for this target's objects.
include operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/flags.make

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/flags.make
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.cxx
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -fpch-instantiate-templates -Xclang -emit-pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -x c++-header -MD -MT operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -MF CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch.d -o CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -c /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.cxx

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -fpch-instantiate-templates -Xclang -emit-pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -x c++-header -E /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.cxx > CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.i

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -fpch-instantiate-templates -Xclang -emit-pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -x c++-header -S /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.cxx -o CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.s

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/flags.make
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/_.cpp
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.o -MF CMakeFiles/desktop_environment_gnome.dir/_.cpp.o.d -o CMakeFiles/desktop_environment_gnome.dir/_.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/_.cpp

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gnome.dir/_.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/_.cpp > CMakeFiles/desktop_environment_gnome.dir/_.cpp.i

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gnome.dir/_.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/_.cpp -o CMakeFiles/desktop_environment_gnome.dir/_.cpp.s

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/flags.make
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/_factory.cpp
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o -MF CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o.d -o CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/_factory.cpp

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/_factory.cpp > CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.i

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/_factory.cpp -o CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.s

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/flags.make
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/framework.cpp
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o -MF CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o.d -o CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/framework.cpp

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gnome.dir/framework.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/framework.cpp > CMakeFiles/desktop_environment_gnome.dir/framework.cpp.i

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gnome.dir/framework.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/framework.cpp -o CMakeFiles/desktop_environment_gnome.dir/framework.cpp.s

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/flags.make
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/node.cpp
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.o: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.o -MF CMakeFiles/desktop_environment_gnome.dir/node.cpp.o.d -o CMakeFiles/desktop_environment_gnome.dir/node.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/node.cpp

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/desktop_environment_gnome.dir/node.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/node.cpp > CMakeFiles/desktop_environment_gnome.dir/node.cpp.i

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/desktop_environment_gnome.dir/node.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/node.cpp -o CMakeFiles/desktop_environment_gnome.dir/node.cpp.s

# Object files for target desktop_environment_gnome
desktop_environment_gnome_OBJECTS = \
"CMakeFiles/desktop_environment_gnome.dir/_.cpp.o" \
"CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o" \
"CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o" \
"CMakeFiles/desktop_environment_gnome.dir/node.cpp.o"

# External object files for target desktop_environment_gnome
desktop_environment_gnome_EXTERNAL_OBJECTS =

output/libdesktop_environment_gnome.so: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/cmake_pch.hxx.pch
output/libdesktop_environment_gnome.so: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_.cpp.o
output/libdesktop_environment_gnome.so: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/_factory.cpp.o
output/libdesktop_environment_gnome.so: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/framework.cpp.o
output/libdesktop_environment_gnome.so: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/node.cpp.o
output/libdesktop_environment_gnome.so: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/build.make
output/libdesktop_environment_gnome.so: operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library ../../../output/libdesktop_environment_gnome.so"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/desktop_environment_gnome.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/build: output/libdesktop_environment_gnome.so
.PHONY : operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/build

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/clean:
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome && $(CMAKE_COMMAND) -P CMakeFiles/desktop_environment_gnome.dir/cmake_clean.cmake
.PHONY : operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/clean

operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/depend:
	cd /home/camilo/cmake/integration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/camilo/cmake/integration /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome /home/camilo/cmake/integration /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome /home/camilo/cmake/integration/operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : operating_system/operating_system-openbsd/desktop_environment_gnome/CMakeFiles/desktop_environment_gnome.dir/depend

