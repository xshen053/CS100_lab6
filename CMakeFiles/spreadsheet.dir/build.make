# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /usr/bin/cmake3

# The command to remove a file.
RM = /usr/bin/cmake3 -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1

# Include any dependencies generated for this target.
include CMakeFiles/spreadsheet.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/spreadsheet.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/spreadsheet.dir/flags.make

CMakeFiles/spreadsheet.dir/main.cpp.o: CMakeFiles/spreadsheet.dir/flags.make
CMakeFiles/spreadsheet.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/spreadsheet.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spreadsheet.dir/main.cpp.o -c /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/main.cpp

CMakeFiles/spreadsheet.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spreadsheet.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/main.cpp > CMakeFiles/spreadsheet.dir/main.cpp.i

CMakeFiles/spreadsheet.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spreadsheet.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/main.cpp -o CMakeFiles/spreadsheet.dir/main.cpp.s

CMakeFiles/spreadsheet.dir/spreadsheet.cpp.o: CMakeFiles/spreadsheet.dir/flags.make
CMakeFiles/spreadsheet.dir/spreadsheet.cpp.o: spreadsheet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/spreadsheet.dir/spreadsheet.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spreadsheet.dir/spreadsheet.cpp.o -c /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/spreadsheet.cpp

CMakeFiles/spreadsheet.dir/spreadsheet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spreadsheet.dir/spreadsheet.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/spreadsheet.cpp > CMakeFiles/spreadsheet.dir/spreadsheet.cpp.i

CMakeFiles/spreadsheet.dir/spreadsheet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spreadsheet.dir/spreadsheet.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/spreadsheet.cpp -o CMakeFiles/spreadsheet.dir/spreadsheet.cpp.s

# Object files for target spreadsheet
spreadsheet_OBJECTS = \
"CMakeFiles/spreadsheet.dir/main.cpp.o" \
"CMakeFiles/spreadsheet.dir/spreadsheet.cpp.o"

# External object files for target spreadsheet
spreadsheet_EXTERNAL_OBJECTS =

spreadsheet: CMakeFiles/spreadsheet.dir/main.cpp.o
spreadsheet: CMakeFiles/spreadsheet.dir/spreadsheet.cpp.o
spreadsheet: CMakeFiles/spreadsheet.dir/build.make
spreadsheet: CMakeFiles/spreadsheet.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable spreadsheet"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spreadsheet.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/spreadsheet.dir/build: spreadsheet

.PHONY : CMakeFiles/spreadsheet.dir/build

CMakeFiles/spreadsheet.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/spreadsheet.dir/cmake_clean.cmake
.PHONY : CMakeFiles/spreadsheet.dir/clean

CMakeFiles/spreadsheet.dir/depend:
	cd /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1 /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1 /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1 /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1 /home/csmajs/hyu146/lab6/lab-06---strategy-pattern-xshen053-hyu146-1/CMakeFiles/spreadsheet.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/spreadsheet.dir/depend

