# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/lexical_cast
    REF boost-${VERSION}
    SHA512 c7afe64258bc2b7bcc23bf3ca4618f1eaa416700ea253e566f8fa663d660f1eedada661d7543d4722262f17135946e8ce0bcd2b21f6ae7997585367181c31ee1
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
