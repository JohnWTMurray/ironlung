# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/risk/ironlung

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/risk/ironlung

# Include any dependencies generated for this target.
include CMakeFiles/ironlung.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ironlung.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ironlung.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ironlung.dir/flags.make

CMakeFiles/ironlung.dir/src/main.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/main.cpp.o: src/main.cpp
CMakeFiles/ironlung.dir/src/main.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ironlung.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/main.cpp.o -MF CMakeFiles/ironlung.dir/src/main.cpp.o.d -o CMakeFiles/ironlung.dir/src/main.cpp.o -c /home/risk/ironlung/src/main.cpp

CMakeFiles/ironlung.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/main.cpp > CMakeFiles/ironlung.dir/src/main.cpp.i

CMakeFiles/ironlung.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/main.cpp -o CMakeFiles/ironlung.dir/src/main.cpp.s

CMakeFiles/ironlung.dir/src/game.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/game.cpp.o: src/game.cpp
CMakeFiles/ironlung.dir/src/game.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ironlung.dir/src/game.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/game.cpp.o -MF CMakeFiles/ironlung.dir/src/game.cpp.o.d -o CMakeFiles/ironlung.dir/src/game.cpp.o -c /home/risk/ironlung/src/game.cpp

CMakeFiles/ironlung.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/game.cpp > CMakeFiles/ironlung.dir/src/game.cpp.i

CMakeFiles/ironlung.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/game.cpp -o CMakeFiles/ironlung.dir/src/game.cpp.s

CMakeFiles/ironlung.dir/src/line.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/line.cpp.o: src/line.cpp
CMakeFiles/ironlung.dir/src/line.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ironlung.dir/src/line.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/line.cpp.o -MF CMakeFiles/ironlung.dir/src/line.cpp.o.d -o CMakeFiles/ironlung.dir/src/line.cpp.o -c /home/risk/ironlung/src/line.cpp

CMakeFiles/ironlung.dir/src/line.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/line.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/line.cpp > CMakeFiles/ironlung.dir/src/line.cpp.i

CMakeFiles/ironlung.dir/src/line.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/line.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/line.cpp -o CMakeFiles/ironlung.dir/src/line.cpp.s

CMakeFiles/ironlung.dir/src/gameobject.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/gameobject.cpp.o: src/gameobject.cpp
CMakeFiles/ironlung.dir/src/gameobject.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ironlung.dir/src/gameobject.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/gameobject.cpp.o -MF CMakeFiles/ironlung.dir/src/gameobject.cpp.o.d -o CMakeFiles/ironlung.dir/src/gameobject.cpp.o -c /home/risk/ironlung/src/gameobject.cpp

CMakeFiles/ironlung.dir/src/gameobject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/gameobject.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/gameobject.cpp > CMakeFiles/ironlung.dir/src/gameobject.cpp.i

CMakeFiles/ironlung.dir/src/gameobject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/gameobject.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/gameobject.cpp -o CMakeFiles/ironlung.dir/src/gameobject.cpp.s

CMakeFiles/ironlung.dir/src/polygon.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/polygon.cpp.o: src/polygon.cpp
CMakeFiles/ironlung.dir/src/polygon.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ironlung.dir/src/polygon.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/polygon.cpp.o -MF CMakeFiles/ironlung.dir/src/polygon.cpp.o.d -o CMakeFiles/ironlung.dir/src/polygon.cpp.o -c /home/risk/ironlung/src/polygon.cpp

CMakeFiles/ironlung.dir/src/polygon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/polygon.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/polygon.cpp > CMakeFiles/ironlung.dir/src/polygon.cpp.i

CMakeFiles/ironlung.dir/src/polygon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/polygon.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/polygon.cpp -o CMakeFiles/ironlung.dir/src/polygon.cpp.s

CMakeFiles/ironlung.dir/src/rainbow.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/rainbow.cpp.o: src/rainbow.cpp
CMakeFiles/ironlung.dir/src/rainbow.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ironlung.dir/src/rainbow.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/rainbow.cpp.o -MF CMakeFiles/ironlung.dir/src/rainbow.cpp.o.d -o CMakeFiles/ironlung.dir/src/rainbow.cpp.o -c /home/risk/ironlung/src/rainbow.cpp

CMakeFiles/ironlung.dir/src/rainbow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/rainbow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/rainbow.cpp > CMakeFiles/ironlung.dir/src/rainbow.cpp.i

CMakeFiles/ironlung.dir/src/rainbow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/rainbow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/rainbow.cpp -o CMakeFiles/ironlung.dir/src/rainbow.cpp.s

CMakeFiles/ironlung.dir/src/mouse.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/mouse.cpp.o: src/mouse.cpp
CMakeFiles/ironlung.dir/src/mouse.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ironlung.dir/src/mouse.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/mouse.cpp.o -MF CMakeFiles/ironlung.dir/src/mouse.cpp.o.d -o CMakeFiles/ironlung.dir/src/mouse.cpp.o -c /home/risk/ironlung/src/mouse.cpp

CMakeFiles/ironlung.dir/src/mouse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/mouse.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/mouse.cpp > CMakeFiles/ironlung.dir/src/mouse.cpp.i

CMakeFiles/ironlung.dir/src/mouse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/mouse.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/mouse.cpp -o CMakeFiles/ironlung.dir/src/mouse.cpp.s

CMakeFiles/ironlung.dir/src/sync.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/sync.cpp.o: src/sync.cpp
CMakeFiles/ironlung.dir/src/sync.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ironlung.dir/src/sync.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/sync.cpp.o -MF CMakeFiles/ironlung.dir/src/sync.cpp.o.d -o CMakeFiles/ironlung.dir/src/sync.cpp.o -c /home/risk/ironlung/src/sync.cpp

CMakeFiles/ironlung.dir/src/sync.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/sync.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/sync.cpp > CMakeFiles/ironlung.dir/src/sync.cpp.i

CMakeFiles/ironlung.dir/src/sync.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/sync.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/sync.cpp -o CMakeFiles/ironlung.dir/src/sync.cpp.s

CMakeFiles/ironlung.dir/src/camera.cpp.o: CMakeFiles/ironlung.dir/flags.make
CMakeFiles/ironlung.dir/src/camera.cpp.o: src/camera.cpp
CMakeFiles/ironlung.dir/src/camera.cpp.o: CMakeFiles/ironlung.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/ironlung.dir/src/camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ironlung.dir/src/camera.cpp.o -MF CMakeFiles/ironlung.dir/src/camera.cpp.o.d -o CMakeFiles/ironlung.dir/src/camera.cpp.o -c /home/risk/ironlung/src/camera.cpp

CMakeFiles/ironlung.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ironlung.dir/src/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/risk/ironlung/src/camera.cpp > CMakeFiles/ironlung.dir/src/camera.cpp.i

CMakeFiles/ironlung.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ironlung.dir/src/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/risk/ironlung/src/camera.cpp -o CMakeFiles/ironlung.dir/src/camera.cpp.s

# Object files for target ironlung
ironlung_OBJECTS = \
"CMakeFiles/ironlung.dir/src/main.cpp.o" \
"CMakeFiles/ironlung.dir/src/game.cpp.o" \
"CMakeFiles/ironlung.dir/src/line.cpp.o" \
"CMakeFiles/ironlung.dir/src/gameobject.cpp.o" \
"CMakeFiles/ironlung.dir/src/polygon.cpp.o" \
"CMakeFiles/ironlung.dir/src/rainbow.cpp.o" \
"CMakeFiles/ironlung.dir/src/mouse.cpp.o" \
"CMakeFiles/ironlung.dir/src/sync.cpp.o" \
"CMakeFiles/ironlung.dir/src/camera.cpp.o"

# External object files for target ironlung
ironlung_EXTERNAL_OBJECTS =

ironlung: CMakeFiles/ironlung.dir/src/main.cpp.o
ironlung: CMakeFiles/ironlung.dir/src/game.cpp.o
ironlung: CMakeFiles/ironlung.dir/src/line.cpp.o
ironlung: CMakeFiles/ironlung.dir/src/gameobject.cpp.o
ironlung: CMakeFiles/ironlung.dir/src/polygon.cpp.o
ironlung: CMakeFiles/ironlung.dir/src/rainbow.cpp.o
ironlung: CMakeFiles/ironlung.dir/src/mouse.cpp.o
ironlung: CMakeFiles/ironlung.dir/src/sync.cpp.o
ironlung: CMakeFiles/ironlung.dir/src/camera.cpp.o
ironlung: CMakeFiles/ironlung.dir/build.make
ironlung: CMakeFiles/ironlung.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/risk/ironlung/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable ironlung"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ironlung.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ironlung.dir/build: ironlung
.PHONY : CMakeFiles/ironlung.dir/build

CMakeFiles/ironlung.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ironlung.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ironlung.dir/clean

CMakeFiles/ironlung.dir/depend:
	cd /home/risk/ironlung && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/risk/ironlung /home/risk/ironlung /home/risk/ironlung /home/risk/ironlung /home/risk/ironlung/CMakeFiles/ironlung.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ironlung.dir/depend

