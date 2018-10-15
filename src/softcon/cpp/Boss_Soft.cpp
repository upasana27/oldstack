#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include <iostream>
#include <softcon/oil.h>
#include <softcon/taskFlag.h>
#include <softcon/taskVal.h>

using namespace std;
using namespace ros;
using namespace std_msgs;
float currentdepth, refdepth, relative_depth;
int flag = 0;
int val = 0;
softcon::taskFlag flag_msg;
softcon::taskVal val_msg;

void callflag(softcon::taskFlag wtf)
{
    flag_msg = wtf;
    flag = 1;
}

void callval(softcon::taskVal wtf)
{
    val_msg = wtf;
    val = 0;
}

void calldepth(const Float64 x)
{
    cout << "current depth is " << x << "\n";
    currentdepth = x.data;
}

int main(int argc, char **argv)
{
    init(argc, argv, "Software_Boss");
    cout << "Software Boss is Running\n";
    NodeHandle n;
    
    Publisher pub_flag = n.advertise<softcon::taskFlag>("softcon/flag_ffa", 1000);
    Publisher pub_val = n.advertise<softcon::taskVal>("softcon/val_ffa", 1000);

    Subscriber subdepth = n.subscribe("concon/statespecs/depth", 1000, &calldepth);
    
    Subscriber subflag = n.subscribe("softcon/flag_to_boss", 1000, &callflag);
    Subscriber subval = n.subscribe("softcon/val_to_boss", 1000, &callval);
    
    Rate rate(10);

    int count = 0;
    while (ok())
    {
        if (count == 5)
        {
            refdepth = currentdepth; // setting current value from Depth sensor at the surface of the pool as the reference depth
        }

        relative_depth = currentdepth - refdepth; //changed from currentdepth + refdepth

        if (flag == 0 || val == 0)
        {
            if (relative_depth < 3) //change in depth between pool surface and water surface,set threshold to turn on thrusters
            {
                flag_msg.depth_change = 1;
            }
            else if (relative_depth == 3) //to maintain a particular depth,thrusters running
            {
                flag_msg.depth_change = 0;
            }
            else
            {
                flag_msg.depth_change = -1;
            }

            //Extra Safeguard (try disabling and see)
            // flag_msg.offset = 0;
            // flag_msg.speed_change = 0;
            // flag_msg.yaw_change = 0;
        }

        else // sendl to navcon, if values are received from a task node
        {
            cout << "workng";
            flag = 0;
            val = 0;
        }

        ROS_INFO_STREAM("Flags");
        ROS_INFO_STREAM(flag_msg);
        pub_flag.publish(flag_msg);

        ROS_INFO_STREAM("Values");
        ROS_INFO_STREAM(val_msg);
        pub_val.publish(val_msg);
        spinOnce();
        rate.sleep();
        ++count;
    }
    return 0;
}
