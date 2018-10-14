
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float64.h"
#include "std_msgs/Bool.h"
#include <sstream>
#include <iostream>
#include <stdlib.h>

using namespace std;
using namespace ros;

std_msgs::Float64 thrust;
std_msgs::Float64 p;
std_msgs::Float64 pitch;

void pid(const std_msgs::Float64& pidd)
{
	 p.data=pidd.data;
}
void pitch(const std_msgs::Float64& pidd)
{
	 pitch.data=pidd.data;
}
int main(int argc, char **argv) 
{

ros::init(argc, argv, "depthpid");
ros::NodeHandle nh;

ros::Rate rate(10);

ros::Subscriber sub1 = nh.subscribe("bosscon/PID_effort/Thruster3", 1000, &pid) ;
ros::Subscriber subpitch = nh.subscribe("bosscon/PID_effort/Pitch", 1000, &pitch) ;
ros::Publisher thrus= nh.advertise<std_msgs::Float64>("piddepth", 1000);//conirm topic name
ros::Publisher pitch= nh.advertise<std_msgs::Float64>("setpitch", 1000);// extra
while (ros::ok()) 
{
	thrust.data=1722.00+p.data ;
	thrus.publish(thrust);

	cout<<p.data;
	 
	
	ros::spinOnce();
}
rate.sleep();
	return 0;
} 
