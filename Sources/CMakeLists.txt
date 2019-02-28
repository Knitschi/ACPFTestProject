# Root CMakeLists file for the ACPFTestProject
include("CPFCMake/cpfInit.cmake")

cmake_minimum_required(VERSION ${CPF_MINIMUM_CMAKE_VERSION}) 

project(ACPFTestProject)

set(CPF_CLANG_FORMAT_STYLE_FILE "Sources/.clang-format")

cpfAddPackages(GLOBAL_FILES "${CPF_ROOT_DIR}/${CPF_CLANG_FORMAT_STYLE_FILE}")
