# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_SOURCE_DIR = /Users/Dfsavffc/Cpp/Projects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Dfsavffc/Cpp/Projects/cmake-build-release

# Include any dependencies generated for this target.
include calculator/CMakeFiles/calculator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include calculator/CMakeFiles/calculator.dir/compiler_depend.make

# Include the progress variables for this target.
include calculator/CMakeFiles/calculator.dir/progress.make

# Include the compile flags for this target's objects.
include calculator/CMakeFiles/calculator.dir/flags.make

calculator/CMakeFiles/calculator.dir/token.cpp.o: calculator/CMakeFiles/calculator.dir/flags.make
calculator/CMakeFiles/calculator.dir/token.cpp.o: /Users/Dfsavffc/Cpp/Projects/calculator/token.cpp
calculator/CMakeFiles/calculator.dir/token.cpp.o: calculator/CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object calculator/CMakeFiles/calculator.dir/token.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT calculator/CMakeFiles/calculator.dir/token.cpp.o -MF CMakeFiles/calculator.dir/token.cpp.o.d -o CMakeFiles/calculator.dir/token.cpp.o -c /Users/Dfsavffc/Cpp/Projects/calculator/token.cpp

calculator/CMakeFiles/calculator.dir/token.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculator.dir/token.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/Projects/calculator/token.cpp > CMakeFiles/calculator.dir/token.cpp.i

calculator/CMakeFiles/calculator.dir/token.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/token.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/Projects/calculator/token.cpp -o CMakeFiles/calculator.dir/token.cpp.s

calculator/CMakeFiles/calculator.dir/variable.cpp.o: calculator/CMakeFiles/calculator.dir/flags.make
calculator/CMakeFiles/calculator.dir/variable.cpp.o: /Users/Dfsavffc/Cpp/Projects/calculator/variable.cpp
calculator/CMakeFiles/calculator.dir/variable.cpp.o: calculator/CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object calculator/CMakeFiles/calculator.dir/variable.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT calculator/CMakeFiles/calculator.dir/variable.cpp.o -MF CMakeFiles/calculator.dir/variable.cpp.o.d -o CMakeFiles/calculator.dir/variable.cpp.o -c /Users/Dfsavffc/Cpp/Projects/calculator/variable.cpp

calculator/CMakeFiles/calculator.dir/variable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculator.dir/variable.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/Projects/calculator/variable.cpp > CMakeFiles/calculator.dir/variable.cpp.i

calculator/CMakeFiles/calculator.dir/variable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/variable.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/Projects/calculator/variable.cpp -o CMakeFiles/calculator.dir/variable.cpp.s

calculator/CMakeFiles/calculator.dir/calculating.cpp.o: calculator/CMakeFiles/calculator.dir/flags.make
calculator/CMakeFiles/calculator.dir/calculating.cpp.o: /Users/Dfsavffc/Cpp/Projects/calculator/calculating.cpp
calculator/CMakeFiles/calculator.dir/calculating.cpp.o: calculator/CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object calculator/CMakeFiles/calculator.dir/calculating.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT calculator/CMakeFiles/calculator.dir/calculating.cpp.o -MF CMakeFiles/calculator.dir/calculating.cpp.o.d -o CMakeFiles/calculator.dir/calculating.cpp.o -c /Users/Dfsavffc/Cpp/Projects/calculator/calculating.cpp

calculator/CMakeFiles/calculator.dir/calculating.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculator.dir/calculating.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/Projects/calculator/calculating.cpp > CMakeFiles/calculator.dir/calculating.cpp.i

calculator/CMakeFiles/calculator.dir/calculating.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/calculating.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/Projects/calculator/calculating.cpp -o CMakeFiles/calculator.dir/calculating.cpp.s

calculator/CMakeFiles/calculator.dir/main.cpp.o: calculator/CMakeFiles/calculator.dir/flags.make
calculator/CMakeFiles/calculator.dir/main.cpp.o: /Users/Dfsavffc/Cpp/Projects/calculator/main.cpp
calculator/CMakeFiles/calculator.dir/main.cpp.o: calculator/CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object calculator/CMakeFiles/calculator.dir/main.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT calculator/CMakeFiles/calculator.dir/main.cpp.o -MF CMakeFiles/calculator.dir/main.cpp.o.d -o CMakeFiles/calculator.dir/main.cpp.o -c /Users/Dfsavffc/Cpp/Projects/calculator/main.cpp

calculator/CMakeFiles/calculator.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculator.dir/main.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/Projects/calculator/main.cpp > CMakeFiles/calculator.dir/main.cpp.i

calculator/CMakeFiles/calculator.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/main.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/Projects/calculator/main.cpp -o CMakeFiles/calculator.dir/main.cpp.s

calculator/CMakeFiles/calculator.dir/map_func.cpp.o: calculator/CMakeFiles/calculator.dir/flags.make
calculator/CMakeFiles/calculator.dir/map_func.cpp.o: /Users/Dfsavffc/Cpp/Projects/calculator/map_func.cpp
calculator/CMakeFiles/calculator.dir/map_func.cpp.o: calculator/CMakeFiles/calculator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object calculator/CMakeFiles/calculator.dir/map_func.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT calculator/CMakeFiles/calculator.dir/map_func.cpp.o -MF CMakeFiles/calculator.dir/map_func.cpp.o.d -o CMakeFiles/calculator.dir/map_func.cpp.o -c /Users/Dfsavffc/Cpp/Projects/calculator/map_func.cpp

calculator/CMakeFiles/calculator.dir/map_func.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/calculator.dir/map_func.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/Projects/calculator/map_func.cpp > CMakeFiles/calculator.dir/map_func.cpp.i

calculator/CMakeFiles/calculator.dir/map_func.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/calculator.dir/map_func.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/Projects/calculator/map_func.cpp -o CMakeFiles/calculator.dir/map_func.cpp.s

# Object files for target calculator
calculator_OBJECTS = \
"CMakeFiles/calculator.dir/token.cpp.o" \
"CMakeFiles/calculator.dir/variable.cpp.o" \
"CMakeFiles/calculator.dir/calculating.cpp.o" \
"CMakeFiles/calculator.dir/main.cpp.o" \
"CMakeFiles/calculator.dir/map_func.cpp.o"

# External object files for target calculator
calculator_EXTERNAL_OBJECTS =

calculator/calculator: calculator/CMakeFiles/calculator.dir/token.cpp.o
calculator/calculator: calculator/CMakeFiles/calculator.dir/variable.cpp.o
calculator/calculator: calculator/CMakeFiles/calculator.dir/calculating.cpp.o
calculator/calculator: calculator/CMakeFiles/calculator.dir/main.cpp.o
calculator/calculator: calculator/CMakeFiles/calculator.dir/map_func.cpp.o
calculator/calculator: calculator/CMakeFiles/calculator.dir/build.make
calculator/calculator: calculator/CMakeFiles/calculator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Dfsavffc/Cpp/Projects/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable calculator"
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calculator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
calculator/CMakeFiles/calculator.dir/build: calculator/calculator
.PHONY : calculator/CMakeFiles/calculator.dir/build

calculator/CMakeFiles/calculator.dir/clean:
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator && $(CMAKE_COMMAND) -P CMakeFiles/calculator.dir/cmake_clean.cmake
.PHONY : calculator/CMakeFiles/calculator.dir/clean

calculator/CMakeFiles/calculator.dir/depend:
	cd /Users/Dfsavffc/Cpp/Projects/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Dfsavffc/Cpp/Projects /Users/Dfsavffc/Cpp/Projects/calculator /Users/Dfsavffc/Cpp/Projects/cmake-build-release /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator /Users/Dfsavffc/Cpp/Projects/cmake-build-release/calculator/CMakeFiles/calculator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : calculator/CMakeFiles/calculator.dir/depend

