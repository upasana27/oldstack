#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float64.h"
#include <sstream>
#include <iostream>
#include <navcon/tval.h>
#include <softcon/oil.h>
#include <softcon/taskFlag.h>
#include <softcon/taskVal.h>

using namespace std;
using namespace ros;
using namespace std_msgs;

#define offset_end 2                //to be changed
float initial_ldistance = float(8); //to be changed
int pointer = 1, ppointer = 0;
float ldistance = initial_ldistance;

int point, prpoint, ourownvalue = 5;

Float64 rangle;
int typecast;

softcon::taskFlag receiveflag;
softcon::taskVal receiveval;
std_msgs::Float64 test;
navcon::tval sendl;

void callback_f(const softcon::taskFlag &msg)
{
    receiveflag.depth_change = msg.depth_change;
    receiveflag.offset = msg.offset;
    receiveflag.speed_change = msg.speed_change;
    receiveflag.yaw_change = msg.yaw_change;
    ROS_INFO_STREAM ("Flag received.");
}

void callback_v(const softcon::taskVal &msg)
{
	receiveval.thrust_factor=msg.thrust_factor;
	receiveval.yaw_setpoint=msg.yaw_setpoint;
	receiveval.depth_setpoint=msg.depth_setpoint;
	receiveval.speed_change=msg.speed_change;
}

void callyaw(Float64 x)
{
    rangle = x;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "bossnav");
    ros::NodeHandle n;

    Publisher depth = n.advertise<Float64>("concon/setspecs/depth", 1000);
    Publisher yaw = n.advertise<Float64>("concon/setspecs/yaw", 1000);
    Publisher pub = n.advertise<navcon::tval>("navcon/guide", 1000);

    ROS_INFO_STREAM("Navigation boss is running");
    Subscriber subyaw = n.subscribe("softcon/setyaw", 1000, &callyaw);
    Subscriber sub1 = n.subscribe("softcon/flag_ffa", 1000, &callback_f);
    Subscriber sub2 = n.subscribe("softcon/val_ffa", 1000, &callback_v);
    Rate rate(10);
    while (ok())
    {
        if (receiveflag.offset)
        {
            sendl.offyawfront = 1500 + 100*receiveval.thrust_factor;
            sendl.offyawback = 1500 - 100*receiveval.thrust_factor; 
        }
        else
        {
        	sendl.offyawfront = 1500;  
        	sendl.offyawback = 1500;
        }
        if (receiveflag.speed_change)
        {
            sendl.speedleft = 1500 + 100 * receiveval.speed_change;
            sendl.speedright = 1500 + 100 * receiveval.speed_change;
        }
        else
        {
        	sendl.speedleft = 1500;
        	sendl.speedright = 1500;
        }
        if (receiveflag.depth_change)
        {
        	sendl.depthright= 1500+200*receiveval.depth_setpoint;
        	sendl.depthleft=1500+200*receiveval.depth_setpoint;
        }
        else
        {
        	sendl.depthright= 1500;
        	sendl.depthleft=1500;
        }

        pub.publish(sendl);
        depth.publish(test);
        yaw.publish(rangle);

        //For debugging purposes
        ROS_INFO_STREAM(sendl);
        ROS_INFO_STREAM(rangle);
        ROS_INFO_STREAM(test);
        spinOnce();
        rate.sleep();
    }
    return 0;
}
