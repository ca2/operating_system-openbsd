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
include operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/compiler_depend.make

# Include the progress variables for this target.
include operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/progress.make

# Include the compile flags for this target's objects.
include operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/flags.make

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/flags.make
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.cxx
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -fpch-instantiate-templates -Xclang -emit-pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -x c++-header -MD -MT operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch -MF CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch.d -o CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch -c /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.cxx

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/node_openbsd.dir/cmake_pch.hxx.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -fpch-instantiate-templates -Xclang -emit-pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -x c++-header -E /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.cxx > CMakeFiles/node_openbsd.dir/cmake_pch.hxx.i

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/node_openbsd.dir/cmake_pch.hxx.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -fpch-instantiate-templates -Xclang -emit-pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -x c++-header -S /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.cxx -o CMakeFiles/node_openbsd.dir/cmake_pch.hxx.s

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.o: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/flags.make
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.o: operating_system/operating_system-openbsd/node_openbsd/_.cpp
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.o: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.o: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.o: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.o -MF CMakeFiles/node_openbsd.dir/_.cpp.o.d -o CMakeFiles/node_openbsd.dir/_.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/_.cpp

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/node_openbsd.dir/_.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/_.cpp > CMakeFiles/node_openbsd.dir/_.cpp.i

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/node_openbsd.dir/_.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/_.cpp -o CMakeFiles/node_openbsd.dir/_.cpp.s

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.o: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/flags.make
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.o: operating_system/operating_system-openbsd/node_openbsd/_factory.cpp
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.o: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.o: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.o: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.o"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -MD -MT operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.o -MF CMakeFiles/node_openbsd.dir/_factory.cpp.o.d -o CMakeFiles/node_openbsd.dir/_factory.cpp.o -c /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/_factory.cpp

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/node_openbsd.dir/_factory.cpp.i"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -E /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/_factory.cpp > CMakeFiles/node_openbsd.dir/_factory.cpp.i

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/node_openbsd.dir/_factory.cpp.s"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -Xclang -include-pch -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch -Xclang -include -Xclang /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx -S /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/_factory.cpp -o CMakeFiles/node_openbsd.dir/_factory.cpp.s

# Object files for target node_openbsd
node_openbsd_OBJECTS = \
"CMakeFiles/node_openbsd.dir/_.cpp.o" \
"CMakeFiles/node_openbsd.dir/_factory.cpp.o"

# External object files for target node_openbsd
node_openbsd_EXTERNAL_OBJECTS =

output/libnode_openbsd.so: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/cmake_pch.hxx.pch
output/libnode_openbsd.so: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_.cpp.o
output/libnode_openbsd.so: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/_factory.cpp.o
output/libnode_openbsd.so: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/build.make
output/libnode_openbsd.so: operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/camilo/cmake/integration/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../../output/libnode_openbsd.so"
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/node_openbsd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/build: output/libnode_openbsd.so
.PHONY : operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/build

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/clean:
	cd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd && $(CMAKE_COMMAND) -P CMakeFiles/node_openbsd.dir/cmake_clean.cmake
.PHONY : operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/clean

operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/depend:
	cd /home/camilo/cmake/integration && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/camilo/cmake/integration /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd /home/camilo/cmake/integration /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd /home/camilo/cmake/integration/operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : operating_system/operating_system-openbsd/node_openbsd/CMakeFiles/node_openbsd.dir/depend

