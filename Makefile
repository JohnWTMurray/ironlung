# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/risk/ironlung

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/risk/ironlung

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/risk/ironlung/CMakeFiles /home/risk/ironlung//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/risk/ironlung/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named ironlung

# Build rule for target.
ironlung: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 ironlung
.PHONY : ironlung

# fast build rule for target.
ironlung/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/build
.PHONY : ironlung/fast

src/camera.o: src/camera.cpp.o
.PHONY : src/camera.o

# target to build an object file
src/camera.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/camera.cpp.o
.PHONY : src/camera.cpp.o

src/camera.i: src/camera.cpp.i
.PHONY : src/camera.i

# target to preprocess a source file
src/camera.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/camera.cpp.i
.PHONY : src/camera.cpp.i

src/camera.s: src/camera.cpp.s
.PHONY : src/camera.s

# target to generate assembly for a file
src/camera.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/camera.cpp.s
.PHONY : src/camera.cpp.s

src/game.o: src/game.cpp.o
.PHONY : src/game.o

# target to build an object file
src/game.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/game.cpp.o
.PHONY : src/game.cpp.o

src/game.i: src/game.cpp.i
.PHONY : src/game.i

# target to preprocess a source file
src/game.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/game.cpp.i
.PHONY : src/game.cpp.i

src/game.s: src/game.cpp.s
.PHONY : src/game.s

# target to generate assembly for a file
src/game.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/game.cpp.s
.PHONY : src/game.cpp.s

src/gameobject.o: src/gameobject.cpp.o
.PHONY : src/gameobject.o

# target to build an object file
src/gameobject.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/gameobject.cpp.o
.PHONY : src/gameobject.cpp.o

src/gameobject.i: src/gameobject.cpp.i
.PHONY : src/gameobject.i

# target to preprocess a source file
src/gameobject.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/gameobject.cpp.i
.PHONY : src/gameobject.cpp.i

src/gameobject.s: src/gameobject.cpp.s
.PHONY : src/gameobject.s

# target to generate assembly for a file
src/gameobject.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/gameobject.cpp.s
.PHONY : src/gameobject.cpp.s

src/line.o: src/line.cpp.o
.PHONY : src/line.o

# target to build an object file
src/line.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/line.cpp.o
.PHONY : src/line.cpp.o

src/line.i: src/line.cpp.i
.PHONY : src/line.i

# target to preprocess a source file
src/line.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/line.cpp.i
.PHONY : src/line.cpp.i

src/line.s: src/line.cpp.s
.PHONY : src/line.s

# target to generate assembly for a file
src/line.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/line.cpp.s
.PHONY : src/line.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/mouse.o: src/mouse.cpp.o
.PHONY : src/mouse.o

# target to build an object file
src/mouse.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/mouse.cpp.o
.PHONY : src/mouse.cpp.o

src/mouse.i: src/mouse.cpp.i
.PHONY : src/mouse.i

# target to preprocess a source file
src/mouse.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/mouse.cpp.i
.PHONY : src/mouse.cpp.i

src/mouse.s: src/mouse.cpp.s
.PHONY : src/mouse.s

# target to generate assembly for a file
src/mouse.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/mouse.cpp.s
.PHONY : src/mouse.cpp.s

src/polygon.o: src/polygon.cpp.o
.PHONY : src/polygon.o

# target to build an object file
src/polygon.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/polygon.cpp.o
.PHONY : src/polygon.cpp.o

src/polygon.i: src/polygon.cpp.i
.PHONY : src/polygon.i

# target to preprocess a source file
src/polygon.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/polygon.cpp.i
.PHONY : src/polygon.cpp.i

src/polygon.s: src/polygon.cpp.s
.PHONY : src/polygon.s

# target to generate assembly for a file
src/polygon.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/polygon.cpp.s
.PHONY : src/polygon.cpp.s

src/rainbow.o: src/rainbow.cpp.o
.PHONY : src/rainbow.o

# target to build an object file
src/rainbow.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/rainbow.cpp.o
.PHONY : src/rainbow.cpp.o

src/rainbow.i: src/rainbow.cpp.i
.PHONY : src/rainbow.i

# target to preprocess a source file
src/rainbow.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/rainbow.cpp.i
.PHONY : src/rainbow.cpp.i

src/rainbow.s: src/rainbow.cpp.s
.PHONY : src/rainbow.s

# target to generate assembly for a file
src/rainbow.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/rainbow.cpp.s
.PHONY : src/rainbow.cpp.s

src/sync.o: src/sync.cpp.o
.PHONY : src/sync.o

# target to build an object file
src/sync.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/sync.cpp.o
.PHONY : src/sync.cpp.o

src/sync.i: src/sync.cpp.i
.PHONY : src/sync.i

# target to preprocess a source file
src/sync.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/sync.cpp.i
.PHONY : src/sync.cpp.i

src/sync.s: src/sync.cpp.s
.PHONY : src/sync.s

# target to generate assembly for a file
src/sync.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/ironlung.dir/build.make CMakeFiles/ironlung.dir/src/sync.cpp.s
.PHONY : src/sync.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... ironlung"
	@echo "... src/camera.o"
	@echo "... src/camera.i"
	@echo "... src/camera.s"
	@echo "... src/game.o"
	@echo "... src/game.i"
	@echo "... src/game.s"
	@echo "... src/gameobject.o"
	@echo "... src/gameobject.i"
	@echo "... src/gameobject.s"
	@echo "... src/line.o"
	@echo "... src/line.i"
	@echo "... src/line.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/mouse.o"
	@echo "... src/mouse.i"
	@echo "... src/mouse.s"
	@echo "... src/polygon.o"
	@echo "... src/polygon.i"
	@echo "... src/polygon.s"
	@echo "... src/rainbow.o"
	@echo "... src/rainbow.i"
	@echo "... src/rainbow.s"
	@echo "... src/sync.o"
	@echo "... src/sync.i"
	@echo "... src/sync.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

