include(ExternalProject)
ExternalProject_Add(proj1
  DOWNLOAD_COMMAND ""
  SOURCE_DIR ""
  CONFIGURE_COMMAND ${CMAKE_COMMAND} -E echo "Configure proj1"
  BUILD_COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_CURRENT_BINARY_DIR}/out-$<CONFIG>.txt
  BUILD_BYPRODUCTS ${CMAKE_CURRENT_BINARY_DIR}/out-$<CONFIG>.txt
  INSTALL_COMMAND ""
)