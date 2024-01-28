vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO martinmoene/span-lite
    REF v0.10.3
    SHA512 001259FEC3F043391D8C00D858841823F7F88B56884AE73FA0D08F71CD35FAC636DDCC323FE5AAA7E680BDE6092E693F810DA821E8E3ADE29C6D73ED46DB3609
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DSPAN_LITE_OPT_BUILD_TESTS=OFF
        -DSPAN_LITE_OPT_BUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(
    CONFIG_PATH "lib/cmake/${PORT}"
)

file(REMOVE_RECURSE
    "${CURRENT_PACKAGES_DIR}/debug"
    "${CURRENT_PACKAGES_DIR}/lib"
)

file(INSTALL
    "${SOURCE_PATH}/LICENSE.txt" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright
)