# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Dfsavffc/Cpp/Projects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Dfsavffc/Cpp/Projects/build

# Include any dependencies generated for this target.
include graph_test/CMakeFiles/graph.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include graph_test/CMakeFiles/graph.dir/compiler_depend.make

# Include the progress variables for this target.
include graph_test/CMakeFiles/graph.dir/progress.make

# Include the compile flags for this target's objects.
include graph_test/CMakeFiles/graph.dir/flags.make

graph_test/CMakeFiles/graph.dir/main.cpp.o: graph_test/CMakeFiles/graph.dir/flags.make
graph_test/CMakeFiles/graph.dir/main.cpp.o: /Users/Dfsavffc/Cpp/Projects/graph_test/main.cpp
graph_test/CMakeFiles/graph.dir/main.cpp.o: graph_test/CMakeFiles/graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object graph_test/CMakeFiles/graph.dir/main.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT graph_test/CMakeFiles/graph.dir/main.cpp.o -MF CMakeFiles/graph.dir/main.cpp.o.d -o CMakeFiles/graph.dir/main.cpp.o -c /Users/Dfsavffc/Cpp/Projects/graph_test/main.cpp

graph_test/CMakeFiles/graph.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/graph.dir/main.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/Projects/graph_test/main.cpp > CMakeFiles/graph.dir/main.cpp.i

graph_test/CMakeFiles/graph.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/graph.dir/main.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/Projects/graph_test/main.cpp -o CMakeFiles/graph.dir/main.cpp.s

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o: graph_test/CMakeFiles/graph.dir/flags.make
graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o: /Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp
graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o: graph_test/CMakeFiles/graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o -MF CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o.d -o CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o -c /Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp > CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.i

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp -o CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.s

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o: graph_test/CMakeFiles/graph.dir/flags.make
graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o: /Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp
graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o: graph_test/CMakeFiles/graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o -MF CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o.d -o CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o -c /Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp > CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.i

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp -o CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.s

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o: graph_test/CMakeFiles/graph.dir/flags.make
graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o: /Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp
graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o: graph_test/CMakeFiles/graph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Dfsavffc/Cpp/Projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o -MF CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o.d -o CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o -c /Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.i"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp > CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.i

graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.s"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp -o CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.s

# Object files for target graph
graph_OBJECTS = \
"CMakeFiles/graph.dir/main.cpp.o" \
"CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o" \
"CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o" \
"CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o"

# External object files for target graph
graph_EXTERNAL_OBJECTS =

graph_test/graph: graph_test/CMakeFiles/graph.dir/main.cpp.o
graph_test/graph: graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Graph.cpp.o
graph_test/graph: graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/GUI.cpp.o
graph_test/graph: graph_test/CMakeFiles/graph.dir/Users/Dfsavffc/Cpp/lib/Graph_lib/Window.cpp.o
graph_test/graph: graph_test/CMakeFiles/graph.dir/build.make
graph_test/graph: /Users/Dfsavffc/Cpp/lib/FLTK/lib/libfltk_images.a
graph_test/graph: /Users/Dfsavffc/Cpp/lib/FLTK/lib/libfltk_forms.a
graph_test/graph: /Users/Dfsavffc/Cpp/lib/FLTK/lib/libfltk_gl.a
graph_test/graph: /Users/Dfsavffc/Cpp/lib/FLTK/lib/libfltk.a
graph_test/graph: /Users/Dfsavffc/Cpp/lib/FLTK/lib/libfltk.a
graph_test/graph: graph_test/CMakeFiles/graph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/Dfsavffc/Cpp/Projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable graph"
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
graph_test/CMakeFiles/graph.dir/build: graph_test/graph
.PHONY : graph_test/CMakeFiles/graph.dir/build

graph_test/CMakeFiles/graph.dir/clean:
	cd /Users/Dfsavffc/Cpp/Projects/build/graph_test && $(CMAKE_COMMAND) -P CMakeFiles/graph.dir/cmake_clean.cmake
.PHONY : graph_test/CMakeFiles/graph.dir/clean

graph_test/CMakeFiles/graph.dir/depend:
	cd /Users/Dfsavffc/Cpp/Projects/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Dfsavffc/Cpp/Projects /Users/Dfsavffc/Cpp/Projects/graph_test /Users/Dfsavffc/Cpp/Projects/build /Users/Dfsavffc/Cpp/Projects/build/graph_test /Users/Dfsavffc/Cpp/Projects/build/graph_test/CMakeFiles/graph.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : graph_test/CMakeFiles/graph.dir/depend

