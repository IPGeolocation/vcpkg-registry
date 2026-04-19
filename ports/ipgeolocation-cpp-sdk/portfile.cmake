vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO IPGeolocation/ip-geolocation-api-cpp-sdk
    REF v1.0.0
    SHA512 b7b8e6a694330e8dcea4103336ab28803522ea96f4aa910a6a00eb81d48feeb727f769166cfc1c0a311bcc95f4f8e6b64d744093d922ee26b2c7f8dc08053993
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DIPGEOLOCATION_BUILD_TESTS=OFF
        -DIPGEOLOCATION_ENABLE_COVERAGE=OFF
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_cmake_config_fixup(CONFIG_PATH "lib/cmake/ipgeolocation")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
