cmake_minimum_required(VERSION 3.25)

project(FIND_VULKAN LANGUAGES C)

find_package(Vulkan ${VCPKG_VULKAN_VERSION} ${VCPKG_VULKAN_COMPONENTS})
if(NOT Vulkan_FOUND)
    set(CMAKE_FIND_DEBUG_MODE ON)
    find_package(Vulkan ${VCPKG_VULKAN_VERSION} ${VCPKG_VULKAN_COMPONENTS})
endif()

set(OUTFILE "${CMAKE_CURRENT_BINARY_DIR}/vulkan-result.cmake" CACHE FILEPATH "")
configure_file("vulkan-result.cmake.in" "${OUTFILE}" @ONLY ESCAPE_QUOTES)
