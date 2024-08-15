cmake_minimum_required(VERSION 3.12)
project(PS2IconTools)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Compiler options
add_compile_options(-Wall $<$<CONFIG:DEBUG>:-g> $<$<CONFIG:RELEASE>:-O2>)

# Configure OpenUSD install path
list(APPEND CMAKE_PREFIX_PATH "/home/peter/GitRepos/OpenUSD_Install/")

if(APPLE)
    if(CMAKE_SYSTEM_PROCESSOR STREQUAL "arm64")
        list(APPEND CMAKE_PREFIX_PATH "/opt/homebrew/Cellar/")
    else()
        list(APPEND CMAKE_PREFIX_PATH "/usr/local/Cellar/")
    endif()
endif()


# libpng
# set(PNG_ROOT "/opt/homebrew/opt/libpng")
find_package(PNG REQUIRED)
find_package(pxr REQUIRED)
find_package(Python3 COMPONENTS Development)

include_directories(${Python3_INCLUDE_DIRS})
include_directories(${PXR_INCLUDE_DIRS})

# Debug messages
message(STATUS "Found libpng version: ${PNG_VERSION}")
message(STATUS "PNG include directories: ${PNG_INCLUDE_DIRS}")
message(STATUS "PNG libraries: ${PNG_LIBRARIES}")
message(STATUS "pxr libraries: ${PXR_LIBRARIES}")
message(STATUS "CMAKE_PREFIX_PATH: ${CMAKE_PREFIX_PATH}")

# include_directories(${PNG_INCLUDE_DIRS})

# Add source files for each target
add_executable(ps2icon_to_obj 
    src/obj_loader.cpp 
    src/ps2_iconsys.cpp 
    src/ps2_ps2icon.cpp 
    gbLib/src/gbImageLoader.cpp 
    gbLib/src/gbImageLoader_TGA.cpp 
    gbLib/src/gbImageLoader_BMP.cpp 
    gbLib/src/gbException.cpp 
    src/ps2icon_to_obj.cpp)

# add_executable(obj_to_ps2icon 
#     src/obj_loader.cpp 
#     src/ps2_iconsys.cpp 
#     src/ps2_ps2icon.cpp 
#     gbLib/src/gbImageLoader.cpp 
#     gbLib/src/gbImageLoader_TGA.cpp 
#     gbLib/src/gbImageLoader_BMP.cpp 
#     gbLib/src/gbException.cpp 
#     src/obj_to_ps2icon.cpp)

# add_executable(iconsys_builder 
#     src/obj_loader.cpp 
#     src/ps2_iconsys.cpp 
#     src/ps2_ps2icon.cpp 
#     gbLib/src/gbImageLoader.cpp 
#     gbLib/src/gbImageLoader_TGA.cpp 
#     gbLib/src/gbImageLoader_BMP.cpp 
#     gbLib/src/gbException.cpp 
#     src/iconsys_buil-lboost_python312der.cpp)

# Link each executable with the required USD libraries
# target_link_libraries(ps2icon_to_obj usd_usd usd_usdGeom usd_sdf usd_tf usd_vt usd_usdShade usd_usdUtils usd_usdMtlx png pxr ${Python3_LIBRARIES} ${Boost_LIBRARIES} -lboost_python312 -lpython3.12) 
target_link_libraries(ps2icon_to_obj ${Python3_LIBRARIES} png 
usd usdGeom sdf tf vt usdShade usdUtils usdMtlx) 
# target_link_libraries(obj_to_ps2icon usd_usd usd_usdGeom) 
# target_link_libraries(iconsys_builder usd_usd usd_usdGeom)