#include "ros/ros.h"
#include "std_msgs/Float64.h"
#include <iostream>
#include <softcon/oil.h>
#include <softcon/tasksTP.h>
#include <softcon/tasksVD.h>

using namespace std;
using namespace ros;
using namespace std_msgs;
float currentdepth, refdepth, relative_depth;
int flag=0;
softcon::tasksVD receivel;
softcon::tasksTP sendl;
//softcon::oil send;


void callcor(softcon::tasksVD wtf)
{
  receivel.thrust_factor = wtf.thrust_factor;
  receivel.depth_setpoint = wtf.depth_setpoint;
  receivel.yaw_setpoint = wtf.yaw_setpoint;
  receivel.speed_change = wtf.speed_change;
  flag = 1;
}

void calldepth(const Float64 x)
{
  cout<<"current depth is  "<<x<<"\n";
  currentdepth=x.data;
}

int main(int argc, char **argv)
{
  init(argc, argv, "Software Boss");
  cout<<"Software Boss is Running\n";
  NodeHandle n;
  Publisher pub = n.advertise<softcon::oil>("softcon/lantern", 1000);
  Subscriber subdepth = n.subscribe("concon/statespecs/depth", 1000, &calldepth) ;
  Subscriber subtask = n.subscribe("softcon/task", 1000, &callcor) ;
  Rate rate(10);

  int count = 0;
  while (ok())
  {
    if (count==5)
    {
      refdepth=currentdepth;                          // setting current value from Depth sensor at the surface of the pool as the reference depth
    }
    
    relative_depth=currentdepth+refdepth;


    if(relative_depth<3)                  //change in depth between pool surface and water surface,set threshold to turn on thrusters
    {
      sendl.depth_change=0;
    }
    else if (relative_depth==3)               //to maintain a particular depth,thrusters running
    {
      sendl.depth_change=0;
    }
    else if(relative_depth<3 && flag==0)      //to attain a particular Depth,thrusters running
    {
      sendl.depth_change=1;
    }



    if (flag) // sendl to navcon, if values are receiveld from a task node
    { 
      cout<<"workng";
      sendl.depth_change=receivel.depth_setpoint;
      sendl.yaw_change=receivel.yaw_setpoint;
      sendl.speed=receivel.speed_change;

      sendl.offset = 100 * receivel.thrust_factor;
      flag=0;

    }

    ROS_INFO_STREAM( sendl);
    pub.publish(sendl);
    spinOnce();
    rate.sleep();
    ++count;
  }
  return 0;
}
