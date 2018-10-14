#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstrea>
#include <iostream>
#include <softcon/movemsg.h>
using namespace std;
using namespace ros;
float send;
int main(int argc, char **argv)
{


-----------------Image Processing--------------------
/* decide if line detected --> send -1000 //large negative value to be decided
           else
              find angle and write to send */

Publisher pubangle = n.advertise<float>(softcon/setyaw, 1000);     // Angle between line and bot  will be sent on this topic to align
// if line is not detected value of angle will be -1000 or something that absurd

while (ok())
{
  pubangle.publish(send)
  ros::spinOnce();
  loop_rate.sleep();
  }
return 0;
}
