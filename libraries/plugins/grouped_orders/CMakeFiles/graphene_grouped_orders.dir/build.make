# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/ntzcore2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/ntzcore2

# Include any dependencies generated for this target.
include libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/depend.make

# Include the progress variables for this target.
include libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/progress.make

# Include the compile flags for this target's objects.
include libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/flags.make

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o: libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/flags.make
libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o: libraries/plugins/grouped_orders/grouped_orders_plugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/ntzcore2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o"
	cd /root/ntzcore2/libraries/plugins/grouped_orders && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o -c /root/ntzcore2/libraries/plugins/grouped_orders/grouped_orders_plugin.cpp

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.i"
	cd /root/ntzcore2/libraries/plugins/grouped_orders && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/ntzcore2/libraries/plugins/grouped_orders/grouped_orders_plugin.cpp > CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.i

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.s"
	cd /root/ntzcore2/libraries/plugins/grouped_orders && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/ntzcore2/libraries/plugins/grouped_orders/grouped_orders_plugin.cpp -o CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.s

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o.requires:

.PHONY : libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o.requires

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o.provides: libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o.requires
	$(MAKE) -f libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/build.make libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o.provides.build
.PHONY : libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o.provides

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o.provides.build: libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o


# Object files for target graphene_grouped_orders
graphene_grouped_orders_OBJECTS = \
"CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o"

# External object files for target graphene_grouped_orders
graphene_grouped_orders_EXTERNAL_OBJECTS =

libraries/plugins/grouped_orders/libgraphene_grouped_orders.a: libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o
libraries/plugins/grouped_orders/libgraphene_grouped_orders.a: libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/build.make
libraries/plugins/grouped_orders/libgraphene_grouped_orders.a: libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/ntzcore2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgraphene_grouped_orders.a"
	cd /root/ntzcore2/libraries/plugins/grouped_orders && $(CMAKE_COMMAND) -P CMakeFiles/graphene_grouped_orders.dir/cmake_clean_target.cmake
	cd /root/ntzcore2/libraries/plugins/grouped_orders && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graphene_grouped_orders.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/build: libraries/plugins/grouped_orders/libgraphene_grouped_orders.a

.PHONY : libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/build

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/requires: libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/grouped_orders_plugin.cpp.o.requires

.PHONY : libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/requires

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/clean:
	cd /root/ntzcore2/libraries/plugins/grouped_orders && $(CMAKE_COMMAND) -P CMakeFiles/graphene_grouped_orders.dir/cmake_clean.cmake
.PHONY : libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/clean

libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/depend:
	cd /root/ntzcore2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/ntzcore2 /root/ntzcore2/libraries/plugins/grouped_orders /root/ntzcore2 /root/ntzcore2/libraries/plugins/grouped_orders /root/ntzcore2/libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libraries/plugins/grouped_orders/CMakeFiles/graphene_grouped_orders.dir/depend

