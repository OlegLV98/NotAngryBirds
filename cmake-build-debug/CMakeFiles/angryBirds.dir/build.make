# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/oleglesnoy/Desktop/angryBirds

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/oleglesnoy/Desktop/angryBirds/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/angryBirds.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/angryBirds.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/angryBirds.dir/flags.make

CMakeFiles/angryBirds.dir/main.cpp.o: CMakeFiles/angryBirds.dir/flags.make
CMakeFiles/angryBirds.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/oleglesnoy/Desktop/angryBirds/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/angryBirds.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/angryBirds.dir/main.cpp.o -c /Users/oleglesnoy/Desktop/angryBirds/main.cpp

CMakeFiles/angryBirds.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/angryBirds.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/oleglesnoy/Desktop/angryBirds/main.cpp > CMakeFiles/angryBirds.dir/main.cpp.i

CMakeFiles/angryBirds.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/angryBirds.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/oleglesnoy/Desktop/angryBirds/main.cpp -o CMakeFiles/angryBirds.dir/main.cpp.s

# Object files for target angryBirds
angryBirds_OBJECTS = \
"CMakeFiles/angryBirds.dir/main.cpp.o"

# External object files for target angryBirds
angryBirds_EXTERNAL_OBJECTS =

angryBirds: CMakeFiles/angryBirds.dir/main.cpp.o
angryBirds: CMakeFiles/angryBirds.dir/build.make
angryBirds: CMakeFiles/angryBirds.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/oleglesnoy/Desktop/angryBirds/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable angryBirds"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/angryBirds.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/angryBirds.dir/build: angryBirds
.PHONY : CMakeFiles/angryBirds.dir/build

CMakeFiles/angryBirds.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/angryBirds.dir/cmake_clean.cmake
.PHONY : CMakeFiles/angryBirds.dir/clean

CMakeFiles/angryBirds.dir/depend:
	cd /Users/oleglesnoy/Desktop/angryBirds/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/oleglesnoy/Desktop/angryBirds /Users/oleglesnoy/Desktop/angryBirds /Users/oleglesnoy/Desktop/angryBirds/cmake-build-debug /Users/oleglesnoy/Desktop/angryBirds/cmake-build-debug /Users/oleglesnoy/Desktop/angryBirds/cmake-build-debug/CMakeFiles/angryBirds.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/angryBirds.dir/depend

