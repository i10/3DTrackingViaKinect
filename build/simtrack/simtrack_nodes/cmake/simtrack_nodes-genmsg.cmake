# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simtrack_nodes: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simtrack_nodes_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv" NAME_WE)
add_custom_target(_simtrack_nodes_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simtrack_nodes" "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv" ""
)

get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv" NAME_WE)
add_custom_target(_simtrack_nodes_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simtrack_nodes" "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simtrack_nodes
)
_generate_srv_cpp(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simtrack_nodes
)

### Generating Module File
_generate_module_cpp(simtrack_nodes
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simtrack_nodes
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simtrack_nodes_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simtrack_nodes_generate_messages simtrack_nodes_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_cpp _simtrack_nodes_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_cpp _simtrack_nodes_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simtrack_nodes_gencpp)
add_dependencies(simtrack_nodes_gencpp simtrack_nodes_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simtrack_nodes_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simtrack_nodes
)
_generate_srv_eus(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simtrack_nodes
)

### Generating Module File
_generate_module_eus(simtrack_nodes
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simtrack_nodes
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(simtrack_nodes_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(simtrack_nodes_generate_messages simtrack_nodes_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_eus _simtrack_nodes_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_eus _simtrack_nodes_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simtrack_nodes_geneus)
add_dependencies(simtrack_nodes_geneus simtrack_nodes_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simtrack_nodes_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simtrack_nodes
)
_generate_srv_lisp(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simtrack_nodes
)

### Generating Module File
_generate_module_lisp(simtrack_nodes
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simtrack_nodes
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simtrack_nodes_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simtrack_nodes_generate_messages simtrack_nodes_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_lisp _simtrack_nodes_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_lisp _simtrack_nodes_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simtrack_nodes_genlisp)
add_dependencies(simtrack_nodes_genlisp simtrack_nodes_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simtrack_nodes_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simtrack_nodes
)
_generate_srv_nodejs(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simtrack_nodes
)

### Generating Module File
_generate_module_nodejs(simtrack_nodes
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simtrack_nodes
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(simtrack_nodes_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(simtrack_nodes_generate_messages simtrack_nodes_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_nodejs _simtrack_nodes_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_nodejs _simtrack_nodes_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simtrack_nodes_gennodejs)
add_dependencies(simtrack_nodes_gennodejs simtrack_nodes_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simtrack_nodes_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simtrack_nodes
)
_generate_srv_py(simtrack_nodes
  "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simtrack_nodes
)

### Generating Module File
_generate_module_py(simtrack_nodes
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simtrack_nodes
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simtrack_nodes_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simtrack_nodes_generate_messages simtrack_nodes_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchObjects.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_py _simtrack_nodes_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shams3049/catkin_ws/src/simtrack/simtrack_nodes/srv/SwitchCamera.srv" NAME_WE)
add_dependencies(simtrack_nodes_generate_messages_py _simtrack_nodes_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simtrack_nodes_genpy)
add_dependencies(simtrack_nodes_genpy simtrack_nodes_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simtrack_nodes_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simtrack_nodes)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simtrack_nodes
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(simtrack_nodes_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(simtrack_nodes_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(simtrack_nodes_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simtrack_nodes)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/simtrack_nodes
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(simtrack_nodes_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(simtrack_nodes_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(simtrack_nodes_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simtrack_nodes)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simtrack_nodes
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(simtrack_nodes_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(simtrack_nodes_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(simtrack_nodes_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simtrack_nodes)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/simtrack_nodes
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(simtrack_nodes_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(simtrack_nodes_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(simtrack_nodes_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simtrack_nodes)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simtrack_nodes\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simtrack_nodes
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(simtrack_nodes_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(simtrack_nodes_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(simtrack_nodes_generate_messages_py sensor_msgs_generate_messages_py)
endif()
