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

# Utility rule file for softcon_generate_messages_cpp.

# Include the progress variables for this target.
include softcon/CMakeFiles/softcon_generate_messages_cpp.dir/progress.make

softcon/CMakeFiles/softcon_generate_messages_cpp: /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskVal.h
softcon/CMakeFiles/softcon_generate_messages_cpp: /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskFlag.h
softcon/CMakeFiles/softcon_generate_messages_cpp: /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/oil.h


/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskVal.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskVal.h: /home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg
/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskVal.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kartikay/Desktop/old-stack/oldstack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from softcon/taskVal.msg"
	cd /home/kartikay/Desktop/old-stack/oldstack/src/softcon && /home/kartikay/Desktop/old-stack/oldstack/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg -Isoftcon:/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p softcon -o /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskFlag.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskFlag.h: /home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg
/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskFlag.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kartikay/Desktop/old-stack/oldstack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from softcon/taskFlag.msg"
	cd /home/kartikay/Desktop/old-stack/oldstack/src/softcon && /home/kartikay/Desktop/old-stack/oldstack/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg -Isoftcon:/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p softcon -o /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/oil.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/oil.h: /home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg
/home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/oil.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kartikay/Desktop/old-stack/oldstack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from softcon/oil.msg"
	cd /home/kartikay/Desktop/old-stack/oldstack/src/softcon && /home/kartikay/Desktop/old-stack/oldstack/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg -Isoftcon:/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p softcon -o /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon -e /opt/ros/kinetic/share/gencpp/cmake/..

softcon_generate_messages_cpp: softcon/CMakeFiles/softcon_generate_messages_cpp
softcon_generate_messages_cpp: /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskVal.h
softcon_generate_messages_cpp: /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/taskFlag.h
softcon_generate_messages_cpp: /home/kartikay/Desktop/old-stack/oldstack/devel/include/softcon/oil.h
softcon_generate_messages_cpp: softcon/CMakeFiles/softcon_generate_messages_cpp.dir/build.make

.PHONY : softcon_generate_messages_cpp

# Rule to build all files generated by this target.
softcon/CMakeFiles/softcon_generate_messages_cpp.dir/build: softcon_generate_messages_cpp

.PHONY : softcon/CMakeFiles/softcon_generate_messages_cpp.dir/build

softcon/CMakeFiles/softcon_generate_messages_cpp.dir/clean:
	cd /home/kartikay/Desktop/old-stack/oldstack/build/softcon && $(CMAKE_COMMAND) -P CMakeFiles/softcon_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : softcon/CMakeFiles/softcon_generate_messages_cpp.dir/clean

softcon/CMakeFiles/softcon_generate_messages_cpp.dir/depend:
	cd /home/kartikay/Desktop/old-stack/oldstack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kartikay/Desktop/old-stack/oldstack/src /home/kartikay/Desktop/old-stack/oldstack/src/softcon /home/kartikay/Desktop/old-stack/oldstack/build /home/kartikay/Desktop/old-stack/oldstack/build/softcon /home/kartikay/Desktop/old-stack/oldstack/build/softcon/CMakeFiles/softcon_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : softcon/CMakeFiles/softcon_generate_messages_cpp.dir/depend

