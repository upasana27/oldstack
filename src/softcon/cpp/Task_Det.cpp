#include<ros/ros.h>
#include<iostream>

using namespace std;

int main(int argc,char** argv)
{
	ros::init(argc,argv,"Task_Det");
	ros::NodeHandle n;

	ROS_INFO("Task_Det CALLED!!");	
	return 0;
}
