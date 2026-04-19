vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO IPGeolocation/ip-geolocation-api-cpp-sdk
    REF v1.0.0
    SHA512 93e19f001378c467b25461f65a6bda6ee4ede60717ea63ae4f35d042380cd2d05d4acbf8f9dee7df70e44f1cec7bbe04f849a1f1a01d69458ec96c7f4454fd89
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
