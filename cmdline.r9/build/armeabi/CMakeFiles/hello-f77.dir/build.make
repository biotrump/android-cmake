# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /home/thomas/cmake-3.2.2/bin/cmake

# The command to remove a file.
RM = /home/thomas/cmake-3.2.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thomas/build/android-cmake/cmdline.r9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thomas/build/android-cmake/cmdline.r9/build/armeabi

# Include any dependencies generated for this target.
include CMakeFiles/hello-f77.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello-f77.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello-f77.dir/flags.make

CMakeFiles/hello-f77.dir/hello.f.o: CMakeFiles/hello-f77.dir/flags.make
CMakeFiles/hello-f77.dir/hello.f.o: ../../hello.f
	$(CMAKE_COMMAND) -E cmake_progress_report /home/thomas/build/android-cmake/cmdline.r9/build/armeabi/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building Fortran object CMakeFiles/hello-f77.dir/hello.f.o"
	/home/thomas/NDK/android-ndk-r9/toolchains/arm-linux-androideabi-4.8.0/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gfortran  $(Fortran_DEFINES) $(Fortran_FLAGS) -c /home/thomas/build/android-cmake/cmdline.r9/hello.f -o CMakeFiles/hello-f77.dir/hello.f.o

CMakeFiles/hello-f77.dir/hello.f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/hello-f77.dir/hello.f.i"
	/home/thomas/NDK/android-ndk-r9/toolchains/arm-linux-androideabi-4.8.0/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gfortran  $(Fortran_DEFINES) $(Fortran_FLAGS) -E /home/thomas/build/android-cmake/cmdline.r9/hello.f > CMakeFiles/hello-f77.dir/hello.f.i

CMakeFiles/hello-f77.dir/hello.f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/hello-f77.dir/hello.f.s"
	/home/thomas/NDK/android-ndk-r9/toolchains/arm-linux-androideabi-4.8.0/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gfortran  $(Fortran_DEFINES) $(Fortran_FLAGS) -S /home/thomas/build/android-cmake/cmdline.r9/hello.f -o CMakeFiles/hello-f77.dir/hello.f.s

CMakeFiles/hello-f77.dir/hello.f.o.requires:
.PHONY : CMakeFiles/hello-f77.dir/hello.f.o.requires

CMakeFiles/hello-f77.dir/hello.f.o.provides: CMakeFiles/hello-f77.dir/hello.f.o.requires
	$(MAKE) -f CMakeFiles/hello-f77.dir/build.make CMakeFiles/hello-f77.dir/hello.f.o.provides.build
.PHONY : CMakeFiles/hello-f77.dir/hello.f.o.provides

CMakeFiles/hello-f77.dir/hello.f.o.provides.build: CMakeFiles/hello-f77.dir/hello.f.o

# Object files for target hello-f77
hello__f77_OBJECTS = \
"CMakeFiles/hello-f77.dir/hello.f.o"

# External object files for target hello-f77
hello__f77_EXTERNAL_OBJECTS =

bin/hello-f77: CMakeFiles/hello-f77.dir/hello.f.o
bin/hello-f77: CMakeFiles/hello-f77.dir/build.make
bin/hello-f77: CMakeFiles/hello-f77.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking Fortran executable bin/hello-f77"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello-f77.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hello-f77.dir/build: bin/hello-f77
.PHONY : CMakeFiles/hello-f77.dir/build

CMakeFiles/hello-f77.dir/requires: CMakeFiles/hello-f77.dir/hello.f.o.requires
.PHONY : CMakeFiles/hello-f77.dir/requires

CMakeFiles/hello-f77.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello-f77.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello-f77.dir/clean

CMakeFiles/hello-f77.dir/depend:
	cd /home/thomas/build/android-cmake/cmdline.r9/build/armeabi && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thomas/build/android-cmake/cmdline.r9 /home/thomas/build/android-cmake/cmdline.r9 /home/thomas/build/android-cmake/cmdline.r9/build/armeabi /home/thomas/build/android-cmake/cmdline.r9/build/armeabi /home/thomas/build/android-cmake/cmdline.r9/build/armeabi/CMakeFiles/hello-f77.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello-f77.dir/depend

