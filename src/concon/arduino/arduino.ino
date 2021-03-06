#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Float64.h>
#include <std_msgs/UInt16.h>
#include <Wire.h>
#include "MS5837.h"
#include<Servo.h>
#include"tval.h"

MS5837 sensor;
Servo depthleft;
Servo depthright;
Servo offyawfront;
Servo offyawback;
Servo speedleft;
Servo speedright;



using namespace ros;

NodeHandle  nh;
std_msgs::Float64 depth;

navcon::tval x;

void messageCb( const navcon::tval &received){
  x=received;
 depthleft.writeMicroseconds(x.depthleft); 
 depthright.writeMicroseconds(x.depthright);
 offyawback.writeMicroseconds(x.offyawback); 
 offyawfront.writeMicroseconds(x.offyawfront);
 speedleft.writeMicroseconds(x.speedleft); 
 speedright.writeMicroseconds(x.speedright);

}
Publisher chatter("concon/statespecs/depth", &depth);

   
Subscriber<navcon::tval> sub("concon/cumeffort", messageCb );

void setup() {
  
  pinMode(13, OUTPUT);

  delay(10) ; 
  Serial.begin(9600);
  //Serial.println("Starting");
  
  Wire.begin();
depthleft.attach(1);
depthright.attach(2);
offyawfront.attach(3);
offyawback.attach(4);
speedright.attach(5);
speedleft.attach(6);

  sensor.init();
  
  sensor.setFluidDensity(997);

  nh.initNode();
 
    
  depthleft.writeMicroseconds(1500); 
  depthright.writeMicroseconds(1500);
  offyawback.writeMicroseconds(1500); 
  offyawfront.writeMicroseconds(1500);
  speedleft.writeMicroseconds(1500); 
  speedright.writeMicroseconds(1500);
  
  delay(5000);

  nh.advertise(chatter);
  nh.subscribe(sub);
}

void loop() {
  // put your main code here, to run repeatedly:
     
 
 sensor.read();
 depth.data = sensor.depth();
 chatter.publish(&depth);
  nh.spinOnce();
  delay(500);
 
}
