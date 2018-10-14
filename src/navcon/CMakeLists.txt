cmake_minimum_required(VERSION 2.8.3)
project(navcon)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

add_message_files(
 # DIRECTORY
  #msg
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
include_directories(${catkin_INCLUDE_DIRS})

add_executable(bossnav cpp/bossnav.cpp)
target_link_libraries(bossnav ${catkin_LIBRARIES})

add_executable(tes cpp/test.cpp)
target_link_libraries(tes ${catkin_LIBRARIES})

add_dependencies(
tes navcon_generate_messages_cpp
)
add_dependencies(
tes softcon_generate_messages_cpp
)
add_dependencies(
bossnav navcon_generate_messages_cpp
)

add_dependencies(
bossnav softcon_generate_messages_cpp
)

