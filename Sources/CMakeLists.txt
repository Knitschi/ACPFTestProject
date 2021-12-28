# Root CMakeLists file for the ACPFTestProject
include("CPFCMake/cpfInitCIProject.cmake")

cmake_minimum_required(VERSION ${CPF_MINIMUM_CMAKE_VERSION}) 

project(ACPFTestProject)

set(CPF_CLANG_FORMAT_STYLE_FILE "Sources/.clang-format")
set(BPackage_BUILD_SHARED_LIBS OFF)
set(BPackage_ENABLE_ABI_API_COMPATIBILITY_REPORT_TARGETS OFF)
set(EPackage_BUILD_SHARED_LIBS ON)
set(APackage_BUILD_SHARED_LIBS OFF)

cpfAddPackages(GLOBAL_FILES "${CPF_ROOT_DIR}/${CPF_CLANG_FORMAT_STYLE_FILE}")

