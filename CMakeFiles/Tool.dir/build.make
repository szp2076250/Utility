# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/szp/Desktop/OneDrive/progma

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/szp/Desktop/OneDrive/progma

# Include any dependencies generated for this target.
include CMakeFiles/Tool.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Tool.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Tool.dir/flags.make

CMakeFiles/Tool.dir/adler32.cpp.o: CMakeFiles/Tool.dir/flags.make
CMakeFiles/Tool.dir/adler32.cpp.o: adler32.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/szp/Desktop/OneDrive/progma/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Tool.dir/adler32.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tool.dir/adler32.cpp.o -c /Users/szp/Desktop/OneDrive/progma/adler32.cpp

CMakeFiles/Tool.dir/adler32.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tool.dir/adler32.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/szp/Desktop/OneDrive/progma/adler32.cpp > CMakeFiles/Tool.dir/adler32.cpp.i

CMakeFiles/Tool.dir/adler32.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tool.dir/adler32.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/szp/Desktop/OneDrive/progma/adler32.cpp -o CMakeFiles/Tool.dir/adler32.cpp.s

CMakeFiles/Tool.dir/md5.cpp.o: CMakeFiles/Tool.dir/flags.make
CMakeFiles/Tool.dir/md5.cpp.o: md5.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/szp/Desktop/OneDrive/progma/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Tool.dir/md5.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tool.dir/md5.cpp.o -c /Users/szp/Desktop/OneDrive/progma/md5.cpp

CMakeFiles/Tool.dir/md5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tool.dir/md5.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/szp/Desktop/OneDrive/progma/md5.cpp > CMakeFiles/Tool.dir/md5.cpp.i

CMakeFiles/Tool.dir/md5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tool.dir/md5.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/szp/Desktop/OneDrive/progma/md5.cpp -o CMakeFiles/Tool.dir/md5.cpp.s

CMakeFiles/Tool.dir/HttpUtility.cpp.o: CMakeFiles/Tool.dir/flags.make
CMakeFiles/Tool.dir/HttpUtility.cpp.o: HttpUtility.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/szp/Desktop/OneDrive/progma/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Tool.dir/HttpUtility.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Tool.dir/HttpUtility.cpp.o -c /Users/szp/Desktop/OneDrive/progma/HttpUtility.cpp

CMakeFiles/Tool.dir/HttpUtility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Tool.dir/HttpUtility.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/szp/Desktop/OneDrive/progma/HttpUtility.cpp > CMakeFiles/Tool.dir/HttpUtility.cpp.i

CMakeFiles/Tool.dir/HttpUtility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Tool.dir/HttpUtility.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/szp/Desktop/OneDrive/progma/HttpUtility.cpp -o CMakeFiles/Tool.dir/HttpUtility.cpp.s

# Object files for target Tool
Tool_OBJECTS = \
"CMakeFiles/Tool.dir/adler32.cpp.o" \
"CMakeFiles/Tool.dir/md5.cpp.o" \
"CMakeFiles/Tool.dir/HttpUtility.cpp.o"

# External object files for target Tool
Tool_EXTERNAL_OBJECTS =

Tool: CMakeFiles/Tool.dir/adler32.cpp.o
Tool: CMakeFiles/Tool.dir/md5.cpp.o
Tool: CMakeFiles/Tool.dir/HttpUtility.cpp.o
Tool: CMakeFiles/Tool.dir/build.make
Tool: CMakeFiles/Tool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/szp/Desktop/OneDrive/progma/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Tool"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Tool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Tool.dir/build: Tool

.PHONY : CMakeFiles/Tool.dir/build

CMakeFiles/Tool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Tool.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Tool.dir/clean

CMakeFiles/Tool.dir/depend:
	cd /Users/szp/Desktop/OneDrive/progma && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/szp/Desktop/OneDrive/progma /Users/szp/Desktop/OneDrive/progma /Users/szp/Desktop/OneDrive/progma /Users/szp/Desktop/OneDrive/progma /Users/szp/Desktop/OneDrive/progma/CMakeFiles/Tool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Tool.dir/depend

