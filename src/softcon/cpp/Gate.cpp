#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <std_msgs/String.h>
#include <softcon/movemsg.h>
//#include <resources/topicHeader.h>

using namespace std;
using namespace cv;
using namespace ros;
using namespace image_transport;
using namespace cv_bridge;

const int FRAME_WIDTH = 640;
const int FRAME_HEIGHT = 360;
#define offset_end 2        //to be changed
float initial_ldistance = 8.0 ;//to be changed
int pointer=1,ppointer=0;
float ldistance = initial_ldistance;


float offset(int &pointer, int &ppointer,float &ldistance) //initialize at 4feet
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
            ldistance=ldistance/2;
            return pointer*ldistance;
        }
}
int point=1,prpoint=0;
int main(int argc,char **argv)
{
      ros::init(argc,argv,"ros_gate");
      ros::NodeHandle nh;
      ROS_INFO_STREAM("gate,ROS!");
	    ros::Publisher move_pub = nh.advertise<softcon::movemsg>("move", 1000);
	    cv::Mat src,thresh1,thresh2;
      cv::VideoCapture cap(0);
      cap.set(CV_CAP_PROP_FRAME_WIDTH,FRAME_WIDTH);
	    cap.set(CV_CAP_PROP_FRAME_HEIGHT,FRAME_HEIGHT);
      if( !cap.isOpened() )
        throw "Error opening Camera!";

	    Rate loop_rate(1);

    	namedWindow("Original", 1);
    	while(ros::ok())
    	{
        	cap >> src;
        	//src = imread("/home/harsh/Desktop/Software-Stack/src/softcon/src/test1.png",1);
          int flag_green =0;
        	int flag_red=0;

          Mat circles = src.clone();
          softcon::movemsg msgs;
        	cvtColor(src, src, CV_BGR2HSV);

        	Scalar red_min = Scalar(0,70,40, 0);
		      Scalar red_max = Scalar(5,255,255, 0);
  		    Scalar green_min = Scalar(43,95,35, 0);
  		    Scalar green_max = Scalar(90,255,115, 0);
		      inRange(src, red_min, red_max, thresh1);
          inRange(src, green_min, green_max, thresh2);

          /* -----------------RED THRESHOLD ----------------------*/

          GaussianBlur(thresh1, thresh1, cv::Size(9, 9), 0, 0, 0);
          std::vector< std::vector<cv::Point> > contours1;
  			  findContours(thresh1, contours1, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);  // Find the contours
          double largest_area1 = 0;
		      int largest_contour_id1 = 0;
          if(contours1.empty())
    		  {
        	     cout<<"No red detected yet....."<<endl;
        		   continue;
    		  }

		      for (int i = 0; i < contours1.size(); i++)  // iterate through each contour.
          {
       		  	double a1 = contourArea(contours1[i], false);
       		  	if (a1 > largest_area1)
       		  	{
        			   largest_area1 = a1;
          			 largest_contour_id1 = i;
        	    }
		      }
   	      vector<Point2f> center1(1);
		      vector<float> radius1(1);
		      minEnclosingCircle(contours1[largest_contour_id1], center1[0], radius1[0]);

          /* ------------------------------ RED END --------------------------- */



          /* ------------------------------ GREEN DETECT ---------------------------*/

          std::vector< std::vector<cv::Point> > contours2;
  		    findContours(thresh2, contours2, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);  // Find the contours
          double largest_area2 = 0;
		      int largest_contour_id2 = 0;
          if(contours2.empty())
    		  {
        		cout<<"No green detected yet....."<<endl;
        		continue;
    		  }
          for (int i = 0; i < contours2.size(); i++)  // iterate through each contour.
          {
       		  	double a2 = contourArea(contours2[i], false);
       		  	if (a2 > largest_area2)
       		  	{
         			  largest_area2 = a2;
          			largest_contour_id2 = i;
    	       	}
		      }
   	      vector<Point2f> center2(1);
		      vector<float> radius2(1);
		      minEnclosingCircle(contours2[largest_contour_id2], center2[0], radius2[0]);

          /* ------------------------------ END OF GREEN DETECT ------------------------*/

		      //circle(src, center1[0], radius1[0], cv::Scalar(0, 0, 255), 1, 8, 0);
          circle(circles, center1[0], 20, cv::Scalar(255, 0, 0), 1, 8, 0);  // minenclosing circle
      		circle(circles, center1[0], 4, cv::Scalar(255, 0, 0), -1, 8, 0);         // center is made on the screen
		      circle(circles, center2[0], 20, cv::Scalar(255, 0,0), 1, 8, 0);  // minenclosing circle
      		circle(circles, center2[0], 4, cv::Scalar(255, 0, 0), -1, 8, 0);         // center is made on the screen

          vector<Point2f> center_Gate(1);
          center_Gate[0].x = (center1[0].x + center2[0].x)/2;
          center_Gate[0].y = (center1[0].y + center2[0].y)/2;

          circle(circles, center_Gate[0], 40, cv::Scalar(0, 0,255), 1, 8, 0);  // minenclosing circle
          circle(circles, center_Gate[0], 4, cv::Scalar(0, 0, 255), -1, 8, 0);
        	imshow("Original", src);
          imshow("Centers",circles);

          //cout<<"center_RED : "<<center1[0].x<<"\t"<<center1[0].y<<endl;
		      //cout<<"center_GREEN : "<<center2[0].x<<"\t"<<center2[0].y<<endl;
          waitKey(20); // waits to display frame
          float cx,cy;


          cx=(center1[0].x + center2[0].x)/2; // X pixel of Gate
          cy=(center1[0].y+center2[0].y)/2; // Y pixel of Gate
          ldistance=offset(point,prpoint,initial_ldistance);

          //TO BE CCHANGED!
          msgs.depth=cx;
          msgs.offset=cy;
          msgs.type=1;
          cout<<cx;
          int shift_x = 300-cx;
          int shift_y = 300-cy;
          int shift_prev=shift_x;
          if (shift_x < 0)
          {
            shift_x = -1;
          }
          else if (shift_x == 0)
          {
            shift_x=0;
          }
          else
            shift_x = 1;
          //msgs.score=23;
          point=shift_x;
          move_pub.publish(msgs);
    	}
    	waitKey(0);
      spinOnce();
      loop_rate.sleep();
      return 0;
}
