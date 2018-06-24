IF(NOT GLOO_FOUND)

include(FindPackageHandleStandardArgs)

SET(GLOO_LIBRARIES)
SET(GLOO_INCLUDE_DIR)

FIND_LIBRARY(GLOO_HOST_LIBRARIES gloo)
FIND_LIBRARY(GLOO_CUDA_LIBRARIES gloo_cuda)
FIND_PATH(GLOO_INCLUDE_DIR gloo)
SET(GLOO_LIBRARIES ${GLOO_HOST_LIBRARIES} ${GLOO_CUDA_LIBRARIES})

IF (GLOO_LIBRARIES)
  SET(GLOO_FOUND TRUE)
ELSE (GLOO_LIBRARIES)
  SET(GLOO_FOUND FALSE)
ENDIF (GLOO_LIBRARIES)

MESSAGE(STATUS "Found Gloo: ${GLOO_FOUND}")

ENDIF(NOT GLOO_FOUND)
