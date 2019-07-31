# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/szp/Documents/Utility-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/szp/Documents/Utility-master

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/szp/Documents/Utility-master/CMakeFiles /home/szp/Documents/Utility-master/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/szp/Documents/Utility-master/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named opengl

# Build rule for target.
opengl: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 opengl
.PHONY : opengl

# fast build rule for target.
opengl/fast:
	$(MAKE) -f CMakeFiles/opengl.dir/build.make CMakeFiles/opengl.dir/build
.PHONY : opengl/fast

#=============================================================================
# Target rules for targets named TestContain

# Build rule for target.
TestContain: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 TestContain
.PHONY : TestContain

# fast build rule for target.
TestContain/fast:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/build
.PHONY : TestContain/fast

#=============================================================================
# Target rules for targets named sserver

# Build rule for target.
sserver: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 sserver
.PHONY : sserver

# fast build rule for target.
sserver/fast:
	$(MAKE) -f CMakeFiles/sserver.dir/build.make CMakeFiles/sserver.dir/build
.PHONY : sserver/fast

# target to build an object file
HttpUtility.o:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/HttpUtility.o
	$(MAKE) -f CMakeFiles/sserver.dir/build.make CMakeFiles/sserver.dir/HttpUtility.o
.PHONY : HttpUtility.o

# target to preprocess a source file
HttpUtility.i:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/HttpUtility.i
	$(MAKE) -f CMakeFiles/sserver.dir/build.make CMakeFiles/sserver.dir/HttpUtility.i
.PHONY : HttpUtility.i

# target to generate assembly for a file
HttpUtility.s:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/HttpUtility.s
	$(MAKE) -f CMakeFiles/sserver.dir/build.make CMakeFiles/sserver.dir/HttpUtility.s
.PHONY : HttpUtility.s

# target to build an object file
TestContain.o:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/TestContain.o
.PHONY : TestContain.o

# target to preprocess a source file
TestContain.i:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/TestContain.i
.PHONY : TestContain.i

# target to generate assembly for a file
TestContain.s:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/TestContain.s
.PHONY : TestContain.s

# target to build an object file
adler32.o:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/adler32.o
.PHONY : adler32.o

# target to preprocess a source file
adler32.i:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/adler32.i
.PHONY : adler32.i

# target to generate assembly for a file
adler32.s:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/adler32.s
.PHONY : adler32.s

# target to build an object file
md5.o:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/md5.o
.PHONY : md5.o

# target to preprocess a source file
md5.i:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/md5.i
.PHONY : md5.i

# target to generate assembly for a file
md5.s:
	$(MAKE) -f CMakeFiles/TestContain.dir/build.make CMakeFiles/TestContain.dir/md5.s
.PHONY : md5.s

# target to build an object file
sserver.o:
	$(MAKE) -f CMakeFiles/sserver.dir/build.make CMakeFiles/sserver.dir/sserver.o
.PHONY : sserver.o

# target to preprocess a source file
sserver.i:
	$(MAKE) -f CMakeFiles/sserver.dir/build.make CMakeFiles/sserver.dir/sserver.i
.PHONY : sserver.i

# target to generate assembly for a file
sserver.s:
	$(MAKE) -f CMakeFiles/sserver.dir/build.make CMakeFiles/sserver.dir/sserver.s
.PHONY : sserver.s

# target to build an object file
testopengl.o:
	$(MAKE) -f CMakeFiles/opengl.dir/build.make CMakeFiles/opengl.dir/testopengl.o
.PHONY : testopengl.o

# target to preprocess a source file
testopengl.i:
	$(MAKE) -f CMakeFiles/opengl.dir/build.make CMakeFiles/opengl.dir/testopengl.i
.PHONY : testopengl.i

# target to generate assembly for a file
testopengl.s:
	$(MAKE) -f CMakeFiles/opengl.dir/build.make CMakeFiles/opengl.dir/testopengl.s
.PHONY : testopengl.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... opengl"
	@echo "... TestContain"
	@echo "... sserver"
	@echo "... HttpUtility.o"
	@echo "... HttpUtility.i"
	@echo "... HttpUtility.s"
	@echo "... TestContain.o"
	@echo "... TestContain.i"
	@echo "... TestContain.s"
	@echo "... adler32.o"
	@echo "... adler32.i"
	@echo "... adler32.s"
	@echo "... md5.o"
	@echo "... md5.i"
	@echo "... md5.s"
	@echo "... sserver.o"
	@echo "... sserver.i"
	@echo "... sserver.s"
	@echo "... testopengl.o"
	@echo "... testopengl.i"
	@echo "... testopengl.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

