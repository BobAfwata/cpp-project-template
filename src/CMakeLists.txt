set(SRC_FILES Class.cpp)

set(LIBS ${OpenCV_LIBS})
# set(LIBS ${OPENGL_LIBRARIES} ${GLUT_LIBRARY})
# set(LIBS Qt5::Quick Qt5::Widgets)

# as a library (always)
add_library(${PROJECT_NAME}_lib SHARED ${SRC_FILES})
target_link_libraries(${PROJECT_NAME}_lib ${LIBS})
set_target_properties(${PROJECT_NAME}_lib PROPERTIES OUTPUT_NAME ${PROJECT_NAME})
install(TARGETS ${PROJECT_NAME}_lib DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
install(DIRECTORY ${PROJECT_SOURCE_DIR}/include DESTINATION ${CMAKE_INSTALL_PREFIX})
