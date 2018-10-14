cmake_minimum_required(VERSION 2.8.3)
project(concon)
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
	CATKIN_DEPENDS message_runtime
)


include_directories(include ${catkin_INCLUDE_DIRS})
include_directories(./../../lib/vnproglib-1.1/cpp/include)
include_directories(/opt/ros/kinetic/share/pid)
include_directories(~/Desktop/auvstacl/src/concon/msg)
link_directories(./../../lib/vnproglib-1.1/cpp)


add_executable(bosscon cpp/bosscon.cpp)
target_link_libraries(bosscon ${catkin_LIBRARIES})

add_executable(input_AHRS 
	cpp/input_AHRS.cpp

./../../lib/vnproglib-1.1/cpp/src/attitude.cpp
./../../lib/vnproglib-1.1/cpp/src/compositedata.cpp
./../../lib/vnproglib-1.1/cpp/src/conversions.cpp
./../../lib/vnproglib-1.1/cpp/src/criticalsection.cpp
./../../lib/vnproglib-1.1/cpp/src/dllvalidator.cpp
./../../lib/vnproglib-1.1/cpp/src/error_detection.cpp
./../../lib/vnproglib-1.1/cpp/src/event.cpp
./../../lib/vnproglib-1.1/cpp/src/ezasyncdata.cpp
./../../lib/vnproglib-1.1/cpp/src/memoryport.cpp
./../../lib/vnproglib-1.1/cpp/src/packet.cpp
./../../lib/vnproglib-1.1/cpp/src/packetfinder.cpp
./../../lib/vnproglib-1.1/cpp/src/port.cpp
./../../lib/vnproglib-1.1/cpp/src/position.cpp
./../../lib/vnproglib-1.1/cpp/src/searcher.cpp
./../../lib/vnproglib-1.1/cpp/src/sensors.cpp
./../../lib/vnproglib-1.1/cpp/src/serialport.cpp
./../../lib/vnproglib-1.1/cpp/src/thread.cpp
./../../lib/vnproglib-1.1/cpp/src/types.cpp
./../../lib/vnproglib-1.1/cpp/src/util.cpp
./../../lib/vnproglib-1.1/cpp/src/utilities.cpp
./../../lib/vnproglib-1.1/cpp/src/vntime.cpp
) 
target_link_libraries(input_AHRS ${catkin_LIBRARIES})

add_dependencies(
bosscon navcon_generate_messages_cpp
bosscon softcon_generate_messages_cpp
input_AHRS concon_generate_messages_cpp
)

add_dependencies(
input_AHRS navcon_generate_messages_cpp
)


find_package(catkin REQUIRED COMPONENTS roslaunch)
roslaunch_add_file_check(launch)
find_package(catkin REQUIRED COMPONENTS pid)



#target_link_libraries(Input ${catkin_LIBRARIES})


# look up on this
## --------------- NAVCON BKC ----------------
add_subdirectory(./../../lib/vnproglib-1.1/cpp  libvncxx)

if(CMAKE_COMPILER_ID MATCHES "GNU|Clang")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
endif()

set(SOURCE_FILES
    ./cpp/input_AHRS.cpp)
#add_executable(record src/record.cpp)
#target_link_libraries(record ${catkin_LIBRARIES})

