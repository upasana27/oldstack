#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float64.h"
#include <sstream>
#include <iostream>
#include <navcon/tval.h>
#include <softcon/oil.h>
#include <softcon/tasksTP.h>
#include <softcon/tasksVD.h>

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

int callback_flag = 0;

softcon::tasksTP receivel;
std_msgs::Float64 test;
navcon::tval sendl;

void callback(const softcon::tasksTP &msg)
{
    double kite = msg.depth_change;
    test.data = kite;

    receivel.depth_change = kite;
    receivel.offset = msg.offset;
    receivel.speed = msg.speed;
    receivel.yaw_change = msg.yaw_change;

    callback_flag = 1;
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
    Subscriber sub = n.subscribe("softcon/lantern", 1000, &callback);
    Rate rate(10);
    while (ok())
    {
        if (callback_flag)
        {
            sendl.offyawfront = 1500 + receivel.offset;
            sendl.offyawback = 1500 - receivel.offset; 
            sendl.speedleft = 1500 + 100 * receivel.speed;
            sendl.speedright = 1500 + 100 * receivel.speed;
            sendl.depthright = 1500 + 200 * receivel.depth_change;
            sendl.depthleft = 1500 + 200 * receivel.depth_change;
        }

        else
        {
            sendl.offyawfront = 1500;
            sendl.offyawback = 1500;
            sendl.speedleft = 1500;
            sendl.speedright = 1500;
            sendl.depthright = 1500;
            sendl.depthleft = 1500;
        }

        callback_flag = 0;

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
