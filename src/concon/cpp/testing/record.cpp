#include<fstream>
#include<iostream>
#include "ros/ros.h"
#include <iostream>
#include "std_msgs/UInt16.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float64.h"
using namespace std;
using namespace ros; 
using namespace std_msgs;
	ofstream depthout;
	ofstream effortout;
	ofstream timeout;
Float64 dd;
Float64 ee;

void Callbackd(const Float64& d)
{
//cout<<"hello"<<endl ;
//dd.data= d.data;
//depthout<<"hello"<<endl;
depthout<<d.data<<endl;


}

void Callbacke(const UInt16& e)
{
cout<<"world"<<endl ;
//ee.data= e.data ;
//effortout<<"world"<<endl;
effortout<<e.data<<endl;

}
int main(int argc, char **argv)
{

	init(argc, argv, "Testing");
	NodeHandle nh;
	
	Subscriber subd = nh.subscribe("chatter1", 1000, &Callbackd);
	Subscriber sube = nh.subscribe("chatter2", 1000, &Callbacke);
	
	
	depthout.open("depth.txt");
	effortout.open("effort.txt");
	timeout.open("time.txt");
	
	while (ok())
{
	
	 // Declaring argument for time()
    time_t tt;
 
    // Declaring variable to store return value of
    // localtime()
    struct tm * ti;
 
    // Applying time()
    time (&tt);
 
    // Using localtime()
    ti = localtime(&tt);
	
    timeout<< asctime(ti)<<endl;
	//depthout<< dd.data ;
	//effortout<<ee.data ;
	spinOnce() ;
}
		depthout.close();
		effortout.close();
		timeout.close();
	
	return 0;
}
