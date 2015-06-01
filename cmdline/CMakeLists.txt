cmake_minimum_required(VERSION 2.8.10)
set(CMAKE_VERBOSE_MAKEFILE true)
project(HELLO Fortran C CXX)

# Add the CMake directory for custon CMake modules
set(CMAKE_MODULE_PATH "${HELLO_SOURCE_DIR}/CMAKE" ${CMAKE_MODULE_PATH})

if(ANDROID_NDK)
	# export FC=/path/to/android-ndk-r9/toolchains/arm-linux-androideabi-4.8.0/prebuilt/linux-x86/bin/arm-linux-androideabi-gfortran
	message ("**** CMAKE_Fortran_COMPILER full path: " ${CMAKE_Fortran_COMPILER})
	get_filename_component (Fortran_COMPILER_NAME ${CMAKE_Fortran_COMPILER} NAME)
	if (Fortran_COMPILER_NAME MATCHES "gfortran.*")
		# gfortran
		message ("*** Fortran compiler: " ${Fortran_COMPILER_NAME})
		set (CMAKE_Fortran_FLAGS_RELEASE "-funroll-all-loops -fPIE -pie -fPIC -fno-f2c -O3")
		set (CMAKE_Fortran_FLAGS_DEBUG   "-fno-f2c -O0 -fPIE -pie -fPIC -g")
	else (Fortran_COMPILER_NAME MATCHES "gfortran.*")
		message ("CMAKE_Fortran_COMPILER full path: " ${CMAKE_Fortran_COMPILER})
		message ("Fortran compiler: " ${Fortran_COMPILER_NAME})
		message ("No optimized Fortran compiler flags are known, we just try -O2...")
		set (CMAKE_Fortran_FLAGS_RELEASE "-O2")
		set (CMAKE_Fortran_FLAGS_DEBUG   "-O0 -g")
	endif (Fortran_COMPILER_NAME MATCHES "gfortran.*")
else(ANDROID_NDK)
	message ("*** Fortran compiler: " ${Fortran_COMPILER_NAME})
	if (UNIX)
	#unix, linux
		if ( "${CMAKE_Fortran_COMPILER}" MATCHES "ifort" )
			set( CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -fltconsistency -fp_port" )
		endif ()
		if ( "${CMAKE_Fortran_COMPILER}" MATCHES "xlf" )
			set( CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -qnosave -qstrict=none" )
		endif ()
		# Delete libmtsk in linking sequence for Sun/Oracle Fortran Compiler.
		# This library is not present in the Sun package SolarisStudio12.3-linux-x86-bin
		STRING(REPLACE \;mtsk\; \; CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "${CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES}")

		if(BUILD_HELLO_GENERIC)
			set( CMAKE_Fortran_FLAGS_RELEASE "${CMAKE_Fortran_FLAGS} -O3 -fomit-frame-pointer -fopenmp" )
			set( CMAKE_Fortran_FLAGS_DEBUG "${CMAKE_Fortran_FLAGS} -O0 -g -fopenmp" )
		endif()
		if(BUILD_HELLO_VEC)
			set( CMAKE_Fortran_FLAGS_RELEASE "${CMAKE_Fortran_FLAGS} -O3 -xAVX" )
			set( CMAKE_Fortran_FLAGS_DEBUG "${CMAKE_Fortran_FLAGS} -O0 -g" )
		endif()
		if(BUILD_HELLO_CUDA)
			set( CMAKE_Fortran_FLAGS_RELEASE "${CMAKE_Fortran_FLAGS} -fast -mp -Mcuda=cc3x,cuda5.5 -Minfo" )
			set( CMAKE_Fortran_FLAGS_DEBUG "${CMAKE_Fortran_FLAGS} -O0 -g" )
		endif()
	endif ()
	message ("*** Fortran compiler RELEASE FLAGS: " ${CMAKE_Fortran_FLAGS_RELEASE})
	message ("*** Fortran compiler DEBUG FLAGS: " ${CMAKE_Fortran_FLAGS_DEBUG})
endif(ANDROID_NDK)

# --------------------------------------------------
# Organize output files.  On Windows this also keeps .dll files next
# to the .exe files that need them, making tests easy to run.
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${HELLO_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${HELLO_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${HELLO_BINARY_DIR}/lib)

# --------------------------------------------------
# Check for any necessary platform specific compiler flags
include( CheckHELLOCompilerFlags )
CheckHELLOCompilerFlags()
# --------------------------------------------------
set(testc "hello.c")
set(testf "hello.f")
set(testf90 "hello.f90")
set(testf95 "hello.f95")

#c code
add_executable(hello-c
	${testc})

#fortran
add_executable(hello-f77
	${testf})

target_link_libraries(hello-f77
	gfortran)

#f90
add_executable(hello-f90
	${testf90})

target_link_libraries(hello-f90
	gfortran)
#f95
add_executable(hello-f95
	${testf95})

target_link_libraries(hello-f95
	gfortran)


