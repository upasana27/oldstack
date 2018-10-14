cmake_minimum_required(VERSION 2.8.3)
project(softcon)
find_package(OpenCV REQUIRED)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

 add_message_files(
   FILES
   oil.msg
 )

generate_messages(
   DEPENDENCIES
   std_msgs

 )

catkin_package(
  #INCLUDE_DIRS include
  LIBRARIES softcon
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
  #DEPENDS system_lib
)

include_directories(
# include
  ${OpenCV_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)

add_executable(bosssoft cpp/Boss_Soft.cpp)
target_link_libraries(bosssoft ${catkin_LIBRARIES})	 
#add_executable(Gate src/Gate.cpp)

add_dependencies(
bosssoft navcon_generate_messages_cpp
bosssoft softcon_generate_messages_cpp
)
