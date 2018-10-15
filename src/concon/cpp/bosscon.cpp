
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float64.h"
#include <sstream>
#include <iostream>
#include <navcon/tval.h>

using namespace std;
using namespace ros;

navcon::tval cumeffort; //final sum from PID and guide(navcon)
navcon::tval pideffort; // thruster values from PID
navcon::tval guideffort;

void callnav(const navcon::tval &msg)
{
	guideffort = msg;
}
void calldepth(const std_msgs::Float64 &test)
{
	double kite = test.data;
	int kite2 = (int)kite;
	pideffort.depthright = kite2;
	pideffort.depthleft = kite2;
}
void callyaw(const std_msgs::Float64 &test)
{
	double kite = test.data;
	int kite2 = (int)kite;
	pideffort.offyawfront = kite2;
	pideffort.offyawback = kite2;
} //c-type  conversion?

int main(int argc, char **argv)
{
	init(argc, argv, "Boss_Con");
	NodeHandle n;

	pideffort.speedright = 0;
	pideffort.speedleft = 0;

	Subscriber subnav = n.subscribe("navcon/guide", 1000, &callnav); //subscribing from bossnav

	//subscribing to pid effort

	Subscriber subpid1 = n.subscribe("concon/PID_effort/depth", 1000, &calldepth);
	Subscriber subpid2 = n.subscribe("concon/PID_effort/offyaw", 1000, &callyaw);

	//publishing tval to cumeffort
	Publisher cumpub = n.advertise<navcon::tval>("concon/cumeffort", 1000);
	Rate rate(10);
	while (ok())
	{
		// Summation of tval values from PIDs and navcon

		cumeffort.depthright = pideffort.depthright + guideffort.depthright;
		cumeffort.depthleft = pideffort.depthleft + guideffort.depthleft;
		
		cumeffort.offyawfront = pideffort.offyawfront + guideffort.offyawfront;
		cumeffort.offyawback = pideffort.offyawback + guideffort.offyawback;

		cumeffort.speedright = pideffort.speedright + guideffort.speedright;
		cumeffort.speedleft = pideffort.speedleft + guideffort.speedleft;

		cumpub.publish(cumeffort);
		ROS_INFO_STREAM(cumeffort);

		spinOnce();
		rate.sleep();
	}
	return 0;
}
