# Define the minimum version
cmake_minimum_required (VERSION 3.10)

# Define the project
project(cmake-learning)

# GoogleTest requires at least C++11
set(CMAKE_CXX_STANDARD 11)

# Add definition for math library 
add_library(math src/math.cc)

# Add definition for the cmake-learning binary
add_executable(cmake-learning src/main.cc)
target_link_libraries(cmake-learning math)

# # Third-party library
# include(ExternalProject)
# ExternalProject_Add(googletest
#     PREFIX "${CMAKE_BINARY_DIR}/lib"
#     GIT_REPOSITORY "https://github.com/google/googletest.git"
#     GIT_TAG "main"
#     CMAKE_ARGS -CMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/lib/installed
# )

# # Prevent build on all targets build
# set_target_properties(googletest PROPETIES EXCLUDE_FROM_ALL TRUE)

# # Define $(CMAKE_INSTALL_...) variables
# include(GNUInstallDirs)

# # Specify where third-party libraries are located
# link_directories(${CMAKE_BINARY_DIR}/lib/installed/${CMAKE_INCLUDE_LIBDIR})
# include_directories(${CMAKE_BINARY_DIR}/lib/installed/${CMAKE_INSTALL_INCLUDEDIR})

