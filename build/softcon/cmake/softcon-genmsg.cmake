# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "softcon: 3 messages, 0 services")

set(MSG_I_FLAGS "-Isoftcon:/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(softcon_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg" NAME_WE)
add_custom_target(_softcon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "softcon" "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg" ""
)

get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg" NAME_WE)
add_custom_target(_softcon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "softcon" "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg" ""
)

get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg" NAME_WE)
add_custom_target(_softcon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "softcon" "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/softcon
)
_generate_msg_cpp(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/softcon
)
_generate_msg_cpp(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/softcon
)

### Generating Services

### Generating Module File
_generate_module_cpp(softcon
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/softcon
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(softcon_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(softcon_generate_messages softcon_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg" NAME_WE)
add_dependencies(softcon_generate_messages_cpp _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg" NAME_WE)
add_dependencies(softcon_generate_messages_cpp _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg" NAME_WE)
add_dependencies(softcon_generate_messages_cpp _softcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(softcon_gencpp)
add_dependencies(softcon_gencpp softcon_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS softcon_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/softcon
)
_generate_msg_eus(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/softcon
)
_generate_msg_eus(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/softcon
)

### Generating Services

### Generating Module File
_generate_module_eus(softcon
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/softcon
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(softcon_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(softcon_generate_messages softcon_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg" NAME_WE)
add_dependencies(softcon_generate_messages_eus _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg" NAME_WE)
add_dependencies(softcon_generate_messages_eus _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg" NAME_WE)
add_dependencies(softcon_generate_messages_eus _softcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(softcon_geneus)
add_dependencies(softcon_geneus softcon_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS softcon_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/softcon
)
_generate_msg_lisp(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/softcon
)
_generate_msg_lisp(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/softcon
)

### Generating Services

### Generating Module File
_generate_module_lisp(softcon
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/softcon
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(softcon_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(softcon_generate_messages softcon_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg" NAME_WE)
add_dependencies(softcon_generate_messages_lisp _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg" NAME_WE)
add_dependencies(softcon_generate_messages_lisp _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg" NAME_WE)
add_dependencies(softcon_generate_messages_lisp _softcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(softcon_genlisp)
add_dependencies(softcon_genlisp softcon_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS softcon_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/softcon
)
_generate_msg_nodejs(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/softcon
)
_generate_msg_nodejs(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/softcon
)

### Generating Services

### Generating Module File
_generate_module_nodejs(softcon
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/softcon
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(softcon_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(softcon_generate_messages softcon_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg" NAME_WE)
add_dependencies(softcon_generate_messages_nodejs _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg" NAME_WE)
add_dependencies(softcon_generate_messages_nodejs _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg" NAME_WE)
add_dependencies(softcon_generate_messages_nodejs _softcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(softcon_gennodejs)
add_dependencies(softcon_gennodejs softcon_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS softcon_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/softcon
)
_generate_msg_py(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/softcon
)
_generate_msg_py(softcon
  "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/softcon
)

### Generating Services

### Generating Module File
_generate_module_py(softcon
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/softcon
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(softcon_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(softcon_generate_messages softcon_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/oil.msg" NAME_WE)
add_dependencies(softcon_generate_messages_py _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskFlag.msg" NAME_WE)
add_dependencies(softcon_generate_messages_py _softcon_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kartikay/Desktop/old-stack/oldstack/src/softcon/msg/taskVal.msg" NAME_WE)
add_dependencies(softcon_generate_messages_py _softcon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(softcon_genpy)
add_dependencies(softcon_genpy softcon_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS softcon_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/softcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/softcon
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(softcon_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/softcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/softcon
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(softcon_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/softcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/softcon
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(softcon_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/softcon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/softcon
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(softcon_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/softcon)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/softcon\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/softcon
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(softcon_generate_messages_py std_msgs_generate_messages_py)
endif()
