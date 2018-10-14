
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float64.h"
#include "geometry_msgs/Twist.h"
#include <sstream>
#include <iostream>
#include <navcon/tval.h>


using namespace std;
using namespace ros;
navcon::tval guideffort ;
geometry_msgs::Twist key;
std_msgs::Float64 senddepth;
	// thruster values from navcon
void callback(const geometry_msgs::Twist& test)
{key=test;
}
int main(int argc, char **argv)
{
	init(argc, argv, "Boss_Con");
	NodeHandle n;
//subscribing to pid effort

	Subscriber subpid1 = n.subscribe("cmd_vel", 1000, &callback);

//publishing tval to cumeffort
	Publisher pub = n.advertise<navcon::tval>("navcon/guide", 1000);
	Publisher depthpub = n.advertise<std_msgs::Float64>("concon/setdepth", 1000);
	Rate rate(10);
	while (ok())
	{//review needed pin numbers
guideffort.speedright=1500+key.linear.x*200;
guideffort.speedleft=1500+key.linear.x*200;
guideffort.offyawback=1500+key.linear.y*200;
guideffort.offyawfront=1500-key.linear.y*200;
senddepth.data += key.linear.z/5;
guideffort.depthright=1500;
guideffort.depthleft=1500;
pub.publish(guideffort);
depthpub.publish(senddepth);

ROS_INFO_STREAM(guideffort);
spinOnce();
rate.sleep();
}
	return 0;
}
