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

# Utility rule file for concon_geneus.

# Include the progress variables for this target.
include concon/CMakeFiles/concon_geneus.dir/progress.make

concon_geneus: concon/CMakeFiles/concon_geneus.dir/build.make

.PHONY : concon_geneus

# Rule to build all files generated by this target.
concon/CMakeFiles/concon_geneus.dir/build: concon_geneus

.PHONY : concon/CMakeFiles/concon_geneus.dir/build

concon/CMakeFiles/concon_geneus.dir/clean:
	cd /home/kartikay/Desktop/old-stack/oldstack/build/concon && $(CMAKE_COMMAND) -P CMakeFiles/concon_geneus.dir/cmake_clean.cmake
.PHONY : concon/CMakeFiles/concon_geneus.dir/clean

concon/CMakeFiles/concon_geneus.dir/depend:
	cd /home/kartikay/Desktop/old-stack/oldstack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kartikay/Desktop/old-stack/oldstack/src /home/kartikay/Desktop/old-stack/oldstack/src/concon /home/kartikay/Desktop/old-stack/oldstack/build /home/kartikay/Desktop/old-stack/oldstack/build/concon /home/kartikay/Desktop/old-stack/oldstack/build/concon/CMakeFiles/concon_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : concon/CMakeFiles/concon_geneus.dir/depend

