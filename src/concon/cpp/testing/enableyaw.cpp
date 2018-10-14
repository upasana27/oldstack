
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float64.h"
#include "std_msgs/Bool.h"
#include <sstream>
#include <iostream>
#include <stdlib.h>
#

using namespace std;
using namespace ros;
int flag1=0;

std_msgs::Float64 yawc ;
std_msgs::Float64 yawdes ;
std_msgs::Float64 del ;
std_msgs::Float64 val ;
std_msgs::Float64 thrust ;
std_msgs::Float64 diryaw ;
std_msgs::Float64 speeddir;

std_msgs::Float64 p;
std_msgs::Bool b ;
	
#define threshon 150.0
#define threshoff 2


void cur(const std_msgs::Float64& curr)
{
	yawc.data=curr.data;
	//ROS_INFO_STREAM
//cout<<"*"<<yawc.data<<endl;
}
void des(const std_msgs::Float64& dess)
{  yawdes.data=dess.data;
		cout<<"$$$$$";

}
void pid(const std_msgs::Float64& pidd)
{
	 p.data=pidd.data;
	cout<<"44";
}

int main(int argc, char **argv) 
{
cout<<'f';

ros::init(argc, argv, "enableyaw");
ros::NodeHandle nh;
	


ros::Subscriber current = nh.subscribe("bosscon/stateSpecs/yaw", 1000, &cur) ;
ros::Subscriber sub1 = nh.subscribe("bosscon/PID_effort/Thruster4", 1000, &pid) ;
ros::Subscriber desired= nh.subscribe("setyaw", 1000, &des) ;

ros::Publisher yaw= nh.advertise<std_msgs::Float64>("yawpid", 1000);//conirm topic name

ros::Rate rate(10);

cout<<1;
	while (ros::ok()) 
	{	
		ros::spinOnce();
		//cout<<3;
		del.data=yawc.data-yawdes.data;
		val.data=abs(del.data);
		cout<<val.data<<"   "<<yawc.data<<"  "<<yawdes.data<<" " <<p.data<<endl;
		
thrust.data=1500.00+p.data;
	 yaw.publish(thrust);
  	
	rate.sleep();
	

    }
	
	return 0;
} 
