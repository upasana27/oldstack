
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
//int offset = 0; // change this when using offset
//Int16 kite=1;

navcon :: tval sendl;
float offset(int &pointer, int &ppointer,float &ldistance)// ldistance can be used to regulate thruster values as it is decreasing over time, and goes negative once AUV goes to opposite side of desired center
{
    cout<<"LDist : "<<ldistance<<endl;
    if(ldistance < offset_end)
    {
        ldistance=initial_ldistance;
        pointer=1;
        ppointer=0;
        return 0;
    }
    if(pointer==0)
    {
        ldistance=initial_ldistance;
        pointer=1;
        ppointer=0;
        return 0;
    }

    if(ppointer==pointer)
        {
            return pointer*ldistance;
        }
    else
        {
            ppointer=pointer;
            ldistance=ldistance/2;  //to be changed
            return pointer*ldistance;
        }
}

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


  void callyaw(Float64 x)
  	{rangle=x;

  	}
int main(int argc, char **argv)
{
	ros::init(argc, argv, "bossnav");
	ros::NodeHandle n;


Publisher depth = n.advertise<Float64>("concon/setspecs/depth", 1000);
Publisher yaw = n.advertise<Float64>("concon/setspecs/yaw", 1000);
Publisher pub = n.advertise<navcon::tval>("navcon/guide", 1000);

ROS_INFO_STREAM("Navigation boss is running");
Subscriber subyaw = n.subscribe("softcon/setyaw",1000,&callyaw);
Subscriber sub = n.subscribe("softcon/lantern", 1000, &callback);
Rate rate(10);
while (ok())
	{

	//<------------------Finding Thruster values for depth----------------------->
			sendl.depthright=1500+200*receivel.depth;  //review NEEDED
			sendl.depthleft=1500+200*receivel.depth;   //review -- set value for ourownvalue depending on testing


// <------------------- Finding Thruster values for offyaw------------------->
if (offset)
    {
	 	  sendl.offyawfront=1500+100/ldistance; //review
			sendl.offyawback=1500-100/ldistance; //review
    }
  else
      sendl.offyawfront=1500;
      sendl.offyawback=1500;
// <------------------- Finding Thruster values for speed------------------->
      sendl.speedleft=1500 + 100*receivel.speed;
      sendl.speedright=1500 + 100*receivel.speed;

      //ldistance=offset(point,prpoint,initial_ldistance);
			int shift_x = 300-receivel.xcor;
			if (shift_x < 0)
				{
				shift_x = -1;
				}
			else if (shift_x == 0)
			{
				shift_x=0;
			}
			else
			{
					shift_x = 1;
			}
			point=shift_x;
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
