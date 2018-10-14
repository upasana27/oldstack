
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float64.h"
#include <sstream>
#include <iostream>
#include <navcon/tval.h>
#include <softcon/oil.h>

using namespace std;
using namespace ros;
using namespace std_msgs;

#define offset_end 2        			//to be changed
float initial_ldistance =float(8) ;		//to be changed
int pointer=1,ppointer=0;
int point,prpoint,ourownvalue=5;
float ldistance = initial_ldistance;
Float64 rangle;
int typecast;
softcon::oil receivel;
std_msgs::Float64 test;
int count=0;
//int offset = 0; // change this when using offset
//Int16 kite=1;
float curdepth;
float relative_depth;
float refdepth;
navcon :: tval sendl;


void callback(const softcon::oil& msg)
	{
  double kite = msg.depth;
	receivel.depth=kite;
  test.data=kite;
  //typecast=receivel.depth;
	receivel.xcor=msg.xcor;
  //Float64 typecastxcor=receivxcor;
	receivel.speed=msg.speed;
  //Float64 typecastspeed=receivel.speed;
	}


  void calldepth(Float64 x)
  	{
  		curdepth = x.data;
  	}
int main(int argc, char **argv)
{
	ros::init(argc, argv, "bossnav");
	ros::NodeHandle n;


Publisher depth = n.advertise<Float64>("concon/setspecs/depth", 1000);


Subscriber depth = n.subscribe("concon/statepoint/depth",1000,&calldepth);
Subscriber sub = n.subscribe("softcon/lantern", 1000, &callback);
Rate rate(10);
while (ok())
	{
		//Fixing depth 0 error

		if (count==5)
		 refdepth = curdepth;                          // taking surface depth as reference
		
		reldepth = curdepth+refdepth;

		 if(reldepth<3)                  //change in depth between pool surface and water surface,set threshold to turn on thrusters
   {
        sendl.depth=0;
    }
    else if (relative_depth==3)               //to maintain a particular depth,thrusters running
    {
      sendl.depth=0;
    }
    else if(relative_depth<3 && flag==0)      //to attain a particular Depth,thrusters running
    {
      sendl.depth=1;
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
	++count;
}
	return 0;

}
