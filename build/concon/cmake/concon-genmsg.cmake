# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "concon: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iconcon:/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(concon_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg" NAME_WE)
add_custom_target(_concon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "concon" "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(concon
  "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concon
)

### Generating Services

### Generating Module File
_generate_module_cpp(concon
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concon
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(concon_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(concon_generate_messages concon_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg" NAME_WE)
add_dependencies(concon_generate_messages_cpp _concon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(concon_gencpp)
add_dependencies(concon_gencpp concon_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS concon_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(concon
  "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/concon
)

### Generating Services

### Generating Module File
_generate_module_eus(concon
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/concon
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(concon_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(concon_generate_messages concon_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg" NAME_WE)
add_dependencies(concon_generate_messages_eus _concon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(concon_geneus)
add_dependencies(concon_geneus concon_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS concon_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(concon
  "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concon
)

### Generating Services

### Generating Module File
_generate_module_lisp(concon
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concon
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(concon_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(concon_generate_messages concon_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg" NAME_WE)
add_dependencies(concon_generate_messages_lisp _concon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(concon_genlisp)
add_dependencies(concon_genlisp concon_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS concon_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(concon
  "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/concon
)

### Generating Services

### Generating Module File
_generate_module_nodejs(concon
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/concon
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(concon_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(concon_generate_messages concon_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg" NAME_WE)
add_dependencies(concon_generate_messages_nodejs _concon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(concon_gennodejs)
add_dependencies(concon_gennodejs concon_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS concon_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(concon
  "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concon
)

### Generating Services

### Generating Module File
_generate_module_py(concon
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concon
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(concon_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(concon_generate_messages concon_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/concon/msg/tval.msg" NAME_WE)
add_dependencies(concon_generate_messages_py _concon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(concon_genpy)
add_dependencies(concon_genpy concon_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS concon_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/concon
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(concon_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/concon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/concon
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(concon_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/concon
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(concon_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/concon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/concon
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(concon_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concon)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concon\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/concon
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(concon_generate_messages_py std_msgs_generate_messages_py)
endif()
