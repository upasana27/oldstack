#include <ros/ros.h>

//General Libs
#include <iostream>
#include <std_msgs/Float64.h>
#include <stdlib.h>
//#include <fstream>

// Include this header file to get access to the EzAsyncData class.
#include "vn/ezasyncdata.h"
#include <navcon/tval.h>
// We need this file for our sleep function.
#include "vn/thread.h"

using namespace std;
using namespace vn::math;
using namespace vn::sensors;
using namespace vn::protocol::uart;
using namespace vn::xplat;

vn::math::vec3 conv ;	//Variable to breakdown YPR values to individual float64 msgs
std_msgs::Float64 tras ;
std_msgs::Float64 tras1;
std_msgs::Float64 tras2;
std_msgs::Float64 yaw;
navcon::tval ya ;

int main(int argc, char *argv[])
{
	 //ofstream outfile;
	 //outfile.open("afile.csv");

	ros::init(argc, argv, "input_AHRS");
  	ros::NodeHandle nh;


	ros::Publisher pub1 = nh.advertise<std_msgs::Float64>("concon/statespecs/pitch", 1000);
	ros::Publisher pub2 = nh.advertise<std_msgs::Float64>("concon/statespecs/yaw", 1000);
       	ros::Rate rate(10) ;

	const string SensorPort = "/dev/ttyUSB0";         // Linux format for virtual (USB) serial port.
	const uint32_t SensorBaudrate = 115200;

	// We create and connect to a sensor by the call below.
	EzAsyncData* ez = EzAsyncData::connect(SensorPort, SensorBaudrate);

	while(ros::ok())
	{
		CompositeData cd = ez->getNextData();
		if (!cd.hasYawPitchRoll())
			cout << "YPR Unavailable." << endl;
		else
		{
			conv = cd.yawPitchRoll() ;

			tras.data = conv[0]+180.0  ; 	//yaw
      tras1.data = conv[1]+90.0 ; 	//pitch
		}

		yaw.data=abs(tras.data);
		if (yaw.data>180 && yaw.data<=360)
		yaw.data-=360;
		pub1.publish(tras1);		//pitch
		pub2.publish(yaw);


		rate.sleep() ;
                cout<<"Pitch   ="<<tras1.data<<endl ;


		cout<<"Yaw   ="<<yaw.data<<endl ;

	}


	ez->disconnect() ;
	//outfile.close() ;

	delete ez;

	return 0;
}
