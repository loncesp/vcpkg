# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/contract
    REF boost-${VERSION}
    SHA512 1ed19aecae94740357f8734ddd77fb14d1ea328df1d0f05eedbbbd8a7b31a6781a0b697e4d68269fcf2c458e77320d0894888956f48c700c023e4d46f70a8d0c
    HEAD_REF master
)

include(${CURRENT_HOST_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(SOURCE_PATH ${SOURCE_PATH})
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
