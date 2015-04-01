# ===========================================================================
# library CMake configuration file
#
# Usage from an external project:
# In your CMakeLists.txt, add these lines:
#
#   find_package(library REQUIRED)
#   target_link_libraries(MY_TARGET_NAME ${library_LIBS})
#
# Sometimes you have to add this line before using 'find_package':
# 
# set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "/path/to/folder")
#
# Change the path "/path/to/folder/" where Findlibrary.cmake is stored
# ===========================================================================

include_directories("/home/nacho/include")
link_directories("/home/nacho/lib")
set(library_LIB_DIR "/home/nacho/lib")
set(library_COMPONENTS library)
set(library_FOUND "YES")

set (library_LIBS )
foreach(__LIB library)
  set(library_LIBS ${library_LIBS} ${__LIB})
endforeach(__LIB)

