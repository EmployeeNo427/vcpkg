vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO qicosmos/cinatra
    REF ${VERSION}
    SHA512 1432a5d799736469c34faffec540c5908484e5581edaceb1f809fce619fb357b182f8a6a1e7f814d2ba81ae94d31bfda30923af61ee557449363ef7cc084a902
    HEAD_REF master
)

set(VCPKG_BUILD_TYPE "release") # Header-only library

# Copy all header files directly into the include directory of the package
file(COPY "${SOURCE_PATH}/include" DESTINATION "${CURRENT_PACKAGES_DIR}/include")
file(RENAME "${CURRENT_PACKAGES_DIR}/include/include" "${CURRENT_PACKAGES_DIR}/include/cinatra")

# Install the license file(s)
vcpkg_install_copyright(
    FILE_LIST "${SOURCE_PATH}/LICENSE"
)
