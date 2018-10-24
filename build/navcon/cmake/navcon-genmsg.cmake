# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navcon: 1 messages, 0 services")

set(MSG_I_FLAGS "-Inavcon:/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navcon_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg" NAME_WE)
add_custom_target(_navcon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navcon" "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(navcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navcon
)

### Generating Services

### Generating Module File
_generate_module_cpp(navcon
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navcon
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navcon_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navcon_generate_messages navcon_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg" NAME_WE)
add_dependencies(navcon_generate_messages_cpp _navcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navcon_gencpp)
add_dependencies(navcon_gencpp navcon_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navcon_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(navcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navcon
)

### Generating Services

### Generating Module File
_generate_module_eus(navcon
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navcon
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(navcon_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(navcon_generate_messages navcon_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg" NAME_WE)
add_dependencies(navcon_generate_messages_eus _navcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navcon_geneus)
add_dependencies(navcon_geneus navcon_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navcon_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(navcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navcon
)

### Generating Services

### Generating Module File
_generate_module_lisp(navcon
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navcon
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navcon_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navcon_generate_messages navcon_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg" NAME_WE)
add_dependencies(navcon_generate_messages_lisp _navcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navcon_genlisp)
add_dependencies(navcon_genlisp navcon_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navcon_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(navcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navcon
)

### Generating Services

### Generating Module File
_generate_module_nodejs(navcon
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navcon
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(navcon_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(navcon_generate_messages navcon_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg" NAME_WE)
add_dependencies(navcon_generate_messages_nodejs _navcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navcon_gennodejs)
add_dependencies(navcon_gennodejs navcon_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navcon_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(navcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navcon
)

### Generating Services

### Generating Module File
_generate_module_py(navcon
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navcon
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navcon_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navcon_generate_messages navcon_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/navcon/msg/tval.msg" NAME_WE)
add_dependencies(navcon_generate_messages_py _navcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navcon_genpy)
add_dependencies(navcon_genpy navcon_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navcon_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navcon
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(navcon_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navcon
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(navcon_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navcon
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(navcon_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navcon
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(navcon_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navcon)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navcon\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navcon
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(navcon_generate_messages_py std_msgs_generate_messages_py)
endif()
