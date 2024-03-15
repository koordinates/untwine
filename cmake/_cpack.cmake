
set(CPACK_PACKAGE_DESCRIPTION "Untwine is software from Hobu, Inc. for creating Entwine Point Tile (EPT) or Cloud Optimized Point Cloud (COPC) web services from PDAL-readable point cloud data sources. It provides an alternative processing approach than the Entwine software, but the output is expected to be compatible EPT/COPC.")
set(CPACK_PACKAGE_CONTACT "Craig de Stigter <craig.destigter@koordinates.com>")

set(CPACK_PACKAGE_NAME "untwine")

set(CPACK_GENERATOR DEB)
set(CPACK_DEBIAN_PACKAGE_SECTION default)
set(CPACK_DEBIAN_PACKAGE_PRIORITY optional)
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)

set(CPACK_DEBIAN_PACKAGE_DEPENDS pdal)
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
set(CPACK_DEBIAN_PACKAGE_GENERATE_SHLIBS_POLICY ">=")
include(CPack)
