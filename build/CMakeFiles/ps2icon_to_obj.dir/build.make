# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Peter/GitRepos/ps2iconsys

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Peter/GitRepos/ps2iconsys/build

# Include any dependencies generated for this target.
include CMakeFiles/ps2icon_to_obj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ps2icon_to_obj.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ps2icon_to_obj.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ps2icon_to_obj.dir/flags.make

CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o: CMakeFiles/ps2icon_to_obj.dir/flags.make
CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o: /Users/Peter/GitRepos/ps2iconsys/src/obj_loader.cpp
CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o: CMakeFiles/ps2icon_to_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o -MF CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o.d -o CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o -c /Users/Peter/GitRepos/ps2iconsys/src/obj_loader.cpp

CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Peter/GitRepos/ps2iconsys/src/obj_loader.cpp > CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.i

CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Peter/GitRepos/ps2iconsys/src/obj_loader.cpp -o CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.s

CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o: CMakeFiles/ps2icon_to_obj.dir/flags.make
CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o: /Users/Peter/GitRepos/ps2iconsys/src/ps2_iconsys.cpp
CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o: CMakeFiles/ps2icon_to_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o -MF CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o.d -o CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o -c /Users/Peter/GitRepos/ps2iconsys/src/ps2_iconsys.cpp

CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Peter/GitRepos/ps2iconsys/src/ps2_iconsys.cpp > CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.i

CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Peter/GitRepos/ps2iconsys/src/ps2_iconsys.cpp -o CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.s

CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o: CMakeFiles/ps2icon_to_obj.dir/flags.make
CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o: /Users/Peter/GitRepos/ps2iconsys/src/ps2_ps2icon.cpp
CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o: CMakeFiles/ps2icon_to_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o -MF CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o.d -o CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o -c /Users/Peter/GitRepos/ps2iconsys/src/ps2_ps2icon.cpp

CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Peter/GitRepos/ps2iconsys/src/ps2_ps2icon.cpp > CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.i

CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Peter/GitRepos/ps2iconsys/src/ps2_ps2icon.cpp -o CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.s

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o: CMakeFiles/ps2icon_to_obj.dir/flags.make
CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o: /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader.cpp
CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o: CMakeFiles/ps2icon_to_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o -MF CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o.d -o CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o -c /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader.cpp

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader.cpp > CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.i

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader.cpp -o CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.s

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o: CMakeFiles/ps2icon_to_obj.dir/flags.make
CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o: /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader_TGA.cpp
CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o: CMakeFiles/ps2icon_to_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o -MF CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o.d -o CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o -c /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader_TGA.cpp

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader_TGA.cpp > CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.i

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader_TGA.cpp -o CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.s

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o: CMakeFiles/ps2icon_to_obj.dir/flags.make
CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o: /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader_BMP.cpp
CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o: CMakeFiles/ps2icon_to_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o -MF CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o.d -o CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o -c /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader_BMP.cpp

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader_BMP.cpp > CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.i

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbImageLoader_BMP.cpp -o CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.s

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o: CMakeFiles/ps2icon_to_obj.dir/flags.make
CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o: /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbException.cpp
CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o: CMakeFiles/ps2icon_to_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o -MF CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o.d -o CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o -c /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbException.cpp

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbException.cpp > CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.i

CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Peter/GitRepos/ps2iconsys/gbLib/src/gbException.cpp -o CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.s

CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o: CMakeFiles/ps2icon_to_obj.dir/flags.make
CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o: /Users/Peter/GitRepos/ps2iconsys/src/ps2icon_to_obj.cpp
CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o: CMakeFiles/ps2icon_to_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o -MF CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o.d -o CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o -c /Users/Peter/GitRepos/ps2iconsys/src/ps2icon_to_obj.cpp

CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Peter/GitRepos/ps2iconsys/src/ps2icon_to_obj.cpp > CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.i

CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Peter/GitRepos/ps2iconsys/src/ps2icon_to_obj.cpp -o CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.s

# Object files for target ps2icon_to_obj
ps2icon_to_obj_OBJECTS = \
"CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o" \
"CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o" \
"CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o" \
"CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o" \
"CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o" \
"CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o" \
"CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o" \
"CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o"

# External object files for target ps2icon_to_obj
ps2icon_to_obj_EXTERNAL_OBJECTS =

ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/src/obj_loader.cpp.o
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/src/ps2_iconsys.cpp.o
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/src/ps2_ps2icon.cpp.o
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader.cpp.o
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_TGA.cpp.o
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbImageLoader_BMP.cpp.o
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/gbLib/src/gbException.cpp.o
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/src/ps2icon_to_obj.cpp.o
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/build.make
ps2icon_to_obj: CMakeFiles/ps2icon_to_obj.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ps2icon_to_obj"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ps2icon_to_obj.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ps2icon_to_obj.dir/build: ps2icon_to_obj
.PHONY : CMakeFiles/ps2icon_to_obj.dir/build

CMakeFiles/ps2icon_to_obj.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ps2icon_to_obj.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ps2icon_to_obj.dir/clean

CMakeFiles/ps2icon_to_obj.dir/depend:
	cd /Users/Peter/GitRepos/ps2iconsys/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Peter/GitRepos/ps2iconsys /Users/Peter/GitRepos/ps2iconsys /Users/Peter/GitRepos/ps2iconsys/build /Users/Peter/GitRepos/ps2iconsys/build /Users/Peter/GitRepos/ps2iconsys/build/CMakeFiles/ps2icon_to_obj.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ps2icon_to_obj.dir/depend

