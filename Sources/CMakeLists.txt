# Root CMakeLists file for the "CMakeProjectFramework"
cmake_minimum_required (VERSION 3.8.0) 

include("CPFCMake/Functions/cpfAddPackages.cmake")
include("${CMAKE_TOOLCHAIN_FILE}")					# make sure the compiler is set before the project call
include("cmake/Hunter/HunterGate.cmake") 


##################### Initialize Hunter Package Manager ######################
# Prefer shared libs for hunter dependencies when the project builds shared libs.
# This is done to prevent VC compiler warning which is triggered when 
if( DEFINED BUILD_SHARED_LIBS AND BUILD_SHARED_LIBS)
	set( HUNTER_BUILD_SHARED_LIBS ON)
endif()

# Set the used version of the Hunter package manager
# This will download other versions if the arguments are changed
# New versions can be found here https://github.com/ruslo/hunter/releases
# The definitions of external package versions can be found in "cmake/Hunter/config.cmake""
HunterGate(
	URL "https://github.com/ruslo/hunter/archive/v0.19.202.tar.gz"
	SHA1 "158c140a38e1f680889523db5c80c987ee3abf2c"
	LOCAL
)

##################################### CREATE PROJECT ########################################
project(ACPFTestProject)

##################################### DEPENDENCIES ########################################
hunter_add_package(GTest)
find_package(GMock 1.8.0 CONFIG REQUIRED gmock main)

####################################### ADD Packages #############################################
cpfAddPackages()
