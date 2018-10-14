#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <std_msgs/String.h>
#include <softcon/movemsg.h>
//#include <resources/topicHeader.h>
//kya bakchod cheez hai yeh ;p
using namespace std;
using namespace cv;
using namespace ros;
using namespace image_transport;
using namespace cv_bridge;

const int FRAME_WIDTH = 600;
const int FRAME_HEIGHT = 600;

bool FLAG_GREEN = false;

int point=1,prpoint=0;
int main(int argc,char **argv)
{
      ros::init(argc,argv,"ros_gate");
      ros::NodeHandle nh;
      ROS_INFO_STREAM("gate,ROS!");
	    ros::Publisher move_pub = nh.advertise<softcon::movemsg>("move", 1000);
	    cv::Mat src,RED,GREEN;
      cv::VideoCapture cap(0);

      cap.set(CV_CAP_PROP_FRAME_WIDTH,FRAME_WIDTH);
	    cap.set(CV_CAP_PROP_FRAME_HEIGHT,FRAME_HEIGHT);
      if( !cap.isOpened() )
        throw "Error opening Camera!";

	    Rate loop_rate(1);

    	namedWindow("Original", 1);

      //DETECT GREEN AND ADJUST HEIGHT
    	while(ros::ok()&&!FLAG_GREEN)
    	{
        	cap >> src;

          Mat circles = src.clone();
          softcon::movemsg msgs;
        	cvtColor(src, src, CV_BGR2HSV);

  		    Scalar green_min = Scalar(43,95,35, 0);
  		    Scalar green_max = Scalar(90,255,115, 0);

          inRange(src, green_min, green_max, GREEN);

          //RED??
          //Align to Center of Bin
          //Reduce depth untill Green not found(Or Error!)
          //DROP!

          double largest_area1 = 0;
          int largest_contour_id1 = 0;
          double prev = -1;
          std::vector< std::vector<cv::Point> > contours1;

            GaussianBlur(GREEN, GREEN, cv::Size(9, 9), 0, 0, 0);

            dilate(GREEN,GREEN,Mat(),Point(-1,-1),2,1,1);
            erode(GREEN,GREEN,Mat(),Point(-1,-1),2,1,1);

            findContours(GREEN, contours1, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);  // Find the contours

            if(!contours1.empty())
      		  {
                 FLAG_GREEN = true;

                 cout<<"GREEN DETECTED!!!!!!\n";
                 cout<<"GREEN DETECTED!!!!!!\n";
                 cout<<"RAISE HEIGHT!!!!\n";
                 cout<<"RAISE HEIGHT!!!!\n";

                 /*--------------- DEPTH = 2ft ----------------.*/
                 //CHANGE
                          //DEPTH
                //|Y O L O | |S W A G|
            }

            imshow("Original",circles);
            imshow("GREEN",GREEN);
            waitKey(10);
            //spinOnce();
            //loop_rate.sleep();
      }

      FLAG_GREEN = false;
      while(ros::ok())
      {
        cap >> src;

        Mat circles = src.clone();
        softcon::movemsg msgs;
        cvtColor(src, src, CV_BGR2HSV);

        Scalar red_min = Scalar(0,70,40, 0);
        Scalar red_max = Scalar(5,255,255, 0);
        inRange(src, red_min, red_max, RED);

        GaussianBlur(RED,RED, cv::Size(9, 9), 0, 0, 0);
        std::vector< std::vector<cv::Point> > contours1;
        findContours(RED, contours1, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);  // Find the contours
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

        circle(circles, center1[0], 20, cv::Scalar(255, 0, 0), 1, 8, 0);
        circle(circles, center1[0], 4, cv::Scalar(255, 0, 0), -1, 8, 0);

        imshow("Original", src);
        imshow("Centers",circles);
        waitKey(20);
      }
    	//waitKey(0);
  return 0;
}
