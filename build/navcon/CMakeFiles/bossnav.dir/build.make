# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/kartikay/Desktop/old-stack/oldstack/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kartikay/Desktop/old-stack/oldstack/build

# Include any dependencies generated for this target.
include navcon/CMakeFiles/bossnav.dir/depend.make

# Include the progress variables for this target.
include navcon/CMakeFiles/bossnav.dir/progress.make

# Include the compile flags for this target's objects.
include navcon/CMakeFiles/bossnav.dir/flags.make

navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o: navcon/CMakeFiles/bossnav.dir/flags.make
navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o: /home/kartikay/Desktop/old-stack/oldstack/src/navcon/cpp/bossnav.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kartikay/Desktop/old-stack/oldstack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o"
	cd /home/kartikay/Desktop/old-stack/oldstack/build/navcon && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o -c /home/kartikay/Desktop/old-stack/oldstack/src/navcon/cpp/bossnav.cpp

navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bossnav.dir/cpp/bossnav.cpp.i"
	cd /home/kartikay/Desktop/old-stack/oldstack/build/navcon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kartikay/Desktop/old-stack/oldstack/src/navcon/cpp/bossnav.cpp > CMakeFiles/bossnav.dir/cpp/bossnav.cpp.i

navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bossnav.dir/cpp/bossnav.cpp.s"
	cd /home/kartikay/Desktop/old-stack/oldstack/build/navcon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kartikay/Desktop/old-stack/oldstack/src/navcon/cpp/bossnav.cpp -o CMakeFiles/bossnav.dir/cpp/bossnav.cpp.s

navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o.requires:

.PHONY : navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o.requires

navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o.provides: navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o.requires
	$(MAKE) -f navcon/CMakeFiles/bossnav.dir/build.make navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o.provides.build
.PHONY : navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o.provides

navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o.provides.build: navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o


# Object files for target bossnav
bossnav_OBJECTS = \
"CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o"

# External object files for target bossnav
bossnav_EXTERNAL_OBJECTS =

/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: navcon/CMakeFiles/bossnav.dir/build.make
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /opt/ros/kinetic/lib/libroscpp.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /opt/ros/kinetic/lib/librosconsole.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /opt/ros/kinetic/lib/librostime.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /opt/ros/kinetic/lib/libcpp_common.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav: navcon/CMakeFiles/bossnav.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kartikay/Desktop/old-stack/oldstack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav"
	cd /home/kartikay/Desktop/old-stack/oldstack/build/navcon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bossnav.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
navcon/CMakeFiles/bossnav.dir/build: /home/kartikay/Desktop/old-stack/oldstack/devel/lib/navcon/bossnav

.PHONY : navcon/CMakeFiles/bossnav.dir/build

navcon/CMakeFiles/bossnav.dir/requires: navcon/CMakeFiles/bossnav.dir/cpp/bossnav.cpp.o.requires

.PHONY : navcon/CMakeFiles/bossnav.dir/requires

navcon/CMakeFiles/bossnav.dir/clean:
	cd /home/kartikay/Desktop/old-stack/oldstack/build/navcon && $(CMAKE_COMMAND) -P CMakeFiles/bossnav.dir/cmake_clean.cmake
.PHONY : navcon/CMakeFiles/bossnav.dir/clean

navcon/CMakeFiles/bossnav.dir/depend:
	cd /home/kartikay/Desktop/old-stack/oldstack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kartikay/Desktop/old-stack/oldstack/src /home/kartikay/Desktop/old-stack/oldstack/src/navcon /home/kartikay/Desktop/old-stack/oldstack/build /home/kartikay/Desktop/old-stack/oldstack/build/navcon /home/kartikay/Desktop/old-stack/oldstack/build/navcon/CMakeFiles/bossnav.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : navcon/CMakeFiles/bossnav.dir/depend

