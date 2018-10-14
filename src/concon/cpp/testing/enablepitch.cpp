
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
int flag1=0;

std_msgs::Float64 pitchc ;
std_msgs::Float64 pitchd ;
std_msgs::Float64 del ;
std_msgs::Float64 val ;
std_msgs::Float64 thrust ;

std_msgs::Float64 p;
std_msgs::Bool b ;
	
#define threshon 150.0
#define threshoff 2


void cur(const std_msgs::Float64& curr)
{
	pitchc.data=curr.data;
	//ROS_INFO_STREAM
//cout<<"*"<<pitchc.data<<endl;
}
void des(const std_msgs::Float64& dess)
{  pitchd.data=dess.data;
		cout<<"$$$$$";

}
void pid(const std_msgs::Float64& pidd)
{
	 p.data=pidd.data;
}


int main(int argc, char **argv) 
{
cout<<'f';

ros::init(argc, argv, "enablepitch");
ros::NodeHandle nh;
	


ros::Subscriber current = nh.subscribe("bosscon/stateSpecs/pitch", 1000, &cur) ;
ros::Subscriber sub1 = nh.subscribe("bosscon/PID_effort/Thruster5", 1000, &pid) ;
ros::Subscriber desired= nh.subscribe("setpitch", 1000, &des) ;

ros::Publisher pitch= nh.advertise<std_msgs::Float64>("pitchpid", 1000);//conirm topic name


ros::Rate rate(10);

cout<<1;
	while (ros::ok()) 
	{	
		ros::spinOnce();
		//cout<<3;
		del.data=pitchc.data-pitchd.data;
		val.data=abs(del.data);
		cout<<val.data<<"   "<<pitchc.data<<"  "<<pitchd.data<<" " <<p.data<<endl;
		
thrust.data=1500.00+p.data;
	 pitch.publish(thrust);
         
    }
	rate.sleep();
	return 0;
} 
