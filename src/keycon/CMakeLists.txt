cmake_minimum_required(VERSION 2.8.3)
project(keycon)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs

  message_generation
)
add_message_files(

  FILES
 tval.msg
)
generate_messages(
	DEPENDENCIES
	std_msgs
	

)
catkin_package(
  #INCLUDE_DIRS include
  LIBRARIES navcon
  CATKIN_DEPENDS message_runtime
  #DEPENDS system_lib
)
## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
catkin_install_python(PROGRAMS
   teleop_twist_keyboard.py
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

include_directories(${catkin_INCLUDE_DIRS})

add_executable(key cpp/key.cpp)
target_link_libraries(key ${catkin_LIBRARIES})

add_dependencies(
key navcon_generate_messages_cpp
)

add_dependencies(
key concon_generate_messages_cpp
)

add_dependencies(
key softcon_generate_messages_cpp
)
