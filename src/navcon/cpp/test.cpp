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
Float64 depthval;
//Int16 kite=1;

navcon :: tval tosend;
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
	ros::init(argc, argv, "Test");
	ros::NodeHandle n;


Publisher depth = n.advertise<Float64>("concon/setspecs/depth", 1000);

Publisher yaw = n.advertise<Float64>("concon/setspecs/yaw", 1000);
Publisher cumpub = n.advertise<navcon::tval>("concon/cumeffort", 1000);

Subscriber subtel = n.subscribe("/cmd_vel", 1000, &callback) ;
Rate rate(10);
int ans=-1;
cout<<"Welcome to the Test Utility Node\n\n";
while(ans!=0)
{
  system("clear");
cout<<"\nChoose you option below\n0)Exit\n1) Send thruster values to Arduino\n2) Control the AUV through keyboard\n3) Publish angle for yaw\n4) Publish Depth to be maintatined by PID\n5) Stop the AUV\n";
cin>>ans;
while (ok())
	{
    switch (ans){
      case 1:
      {
        cout<<"Enter thruster values :\n";
        cout<<"Enter depth right\n";
        cin>>tosend.depthright;
        cout<<"Enter depth left\n";
        cin>>tosend.depthleft;
        cout<<"Enter offyawfront\n";
        cin>>tosend.offyawfront;
        cout<<"Enter offyawback\n";
        cin>>tosend.offyawback;
        cout<<"Enter speedleft\n";
        cin>>tosend.speedleft;
        cout<<"Enter speedright\n";
        cin>>tosend.speedright;

        break;
      }
      case 2:
      {

        cout<<"You can now control the AUV through keyboard.\n";
        break;
      }
      case 3:
      {
        cout<<"Enter the angle.\n";
        cin>>rangle.data;
        break;
      }
      case 4:
      {
        cout<<"Enter the Depth (in metres).\n";
        cin>>depthval.data;
        break;
      }
      case 5:
      {
        tosend.depthright=1500;
        tosend.depthleft=1500;
        tosend.offyawfront=1500;
        tosend.offyawback=1500;
        tosend.speedleft=1500;
        tosend.speedright=1500;
        system ("rosnode kill bosscon");
      }
      case 0:
      {
        exit(0);
      }
    }
    ans=-1;
cumpub.publish(tosend);
yaw.publish(rangle);
depth.publish(depthval);
		spinOnce();
	rate.sleep();
}
}
	return 0;

}
