get_filename_component(Sopt_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
message(STATUS "Linking to sopt package in ${Sopt_CMAKE_DIR}")
set(Sopt_INCLUDE_DIRS "@ALL_INCLUDE_DIRS@")
if(NOT TARGET libsopt)
    include("${Sopt_CMAKE_DIR}/SoptTargets.cmake")
endif()

set(Sopt_LIBRARIES libsopt)
set(Sopt_ABOUT_EXECUTABLE sopt_about)
