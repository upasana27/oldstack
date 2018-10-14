#include "opencv2/opencv.hpp"
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include "opencv2/imgproc/imgproc.hpp"
#include <softcon/movemsg.h>
#include <ros/ros.h>

using namespace std;
using namespace cv;
using namespace ros;

Mat src;
Mat dst, detected_edges;

softcon::movemsg msgs;

int edgeThresh = 1;
int lowThreshold;
int const max_lowThreshold = 250;
int ratio = 3;
int kernel_size = 3;
int lines=0;
double perc1 = 0;
static int cur_x=0, cur_y=0;
static int xflag=-1,yflag=-1;
 int f=0;
 Mat ygrad,xgrad;
  int scale = 1;
  int delta = 0;
  int ddepth = CV_16S;
 int cur_y_dir=0, cur_x_dir=0;
  int c;

	int framenumber=0;

void enhance(Mat src)
{
	// Applying Gaussian blur

 	          GaussianBlur( src, src, Size( 3, 3 ), .5, .5 );

	// Applying Median blur

 		   medianBlur ( src, src, 5);

	// Clahe on split RGB

	vector<Mat> RGB; // Use the STL’s vector structure to store multiple Mat objects
	split(src, RGB); // split the image into separate color planes (R G B)

	


	//    Equalizes the histogram of a one channel image  (8UC1) using Contrast Limited Adaptive 		      Histogram Equalization.
	cv::Ptr<cv::CLAHE> clahe = cv::createCLAHE();
 	   clahe->setClipLimit(2);


	clahe->apply(RGB[0],RGB[0]);
	clahe->apply(RGB[1],RGB[1]);
	clahe->apply(RGB[2],RGB[2]);

		merge(RGB,src);

	// conversion to YCbCr

	cvtColor(src, src, CV_BGR2YCrCb);;
                                                     // Wait for a keystroke in the window

	//Splitting of YCbCr
	Mat yCbCr;

	vector<Mat> ycbcr;
	split(src, ycbcr);

	//Applying Clahe on Y channel

	clahe->apply(ycbcr[0], ycbcr[0]);


	merge(ycbcr,src);
	// Median Blur

	medianBlur ( src, src, 5);

	// Conversion back to RGB

	cvtColor(src, src, CV_YCrCb2BGR);

}

int main(int argc, char** argv ){


init(argc,argv,"navigation");
      ros::NodeHandle nh;
      ROS_INFO_STREAM("Navigation Started");
	    Publisher pub = nh.advertise<softcon::movemsg>("bossSoft/guide", 1000);

	    Rate loop_rate(1);

  // Create a VideoCapture object and open the input file

  VideoCapture cap(0);

  // Check if camera opened successfully
  if(!cap.isOpened()){
    cout << "Error opening video stream or file" << endl;
    return -1;
  }


  while(ok()){
 framenumber++;
    Mat frame;
    // Capture frame-by-frame
    cap >> frame;
  resize(frame, frame, Size(640,360));
    // If the frame is empty, break immediately
    if (frame.empty())
      break;
 Mat src = frame;

 enhance(src);

 Mat src_y = frame;
 Mat src_x = frame;

  if( !src.data )
  { return -1; }


//-----------------Applying sobel for vertical lines----------------------

 	GaussianBlur( src_x, src_x, Size(3,3), 0, 0, BORDER_DEFAULT );
{

Mat src_gray;
	cvtColor( src_x, src_gray, CV_BGR2GRAY );

	  /// Generate grad_x and grad_y
  Mat grad_x, grad_y;
  Mat abs_grad_x, abs_grad_y;

  /// Gradient X
  //Scharr( src_gray, grad_x, ddepth, 1, 0, scale, delta, BORDER_DEFAULT );
  Sobel( src_gray, grad_x, ddepth, 1, 0, 3, scale, delta, BORDER_DEFAULT );
  convertScaleAbs( grad_x, abs_grad_x );

  /// Gradient Y
  //Scharr( src_gray, grad_y, ddepth, 0, 1, scale, delta, BORDER_DEFAULT );
  Sobel( src_gray, grad_y, ddepth, 0, 1, 3, scale, delta, BORDER_DEFAULT );
  convertScaleAbs( grad_y, abs_grad_y );

  /// Total Gradient (approximate)
  addWeighted( abs_grad_x, 1.0, abs_grad_y, -1.0, 0, xgrad );



}






//-----------------Applying sobel for horizontal lines----------------------

   GaussianBlur( src_y, src_y, Size(3,3), 0, 0, BORDER_DEFAULT );

{
Mat src_gray;
  /// Convert it to gray
  cvtColor( src_y, src_gray, CV_BGR2GRAY );

  /// Generate grad_x and grad_y
  Mat grad_x, grad_y;
  Mat abs_grad_x, abs_grad_y;

  /// Gradient X
  //Scharr( src_gray, grad_x, ddepth, 1, 0, scale, delta, BORDER_DEFAULT );
  Sobel( src_gray, grad_x, ddepth, 1, 0, 3, scale, delta, BORDER_DEFAULT );
  convertScaleAbs( grad_x, abs_grad_x );

  /// Gradient
  //Scharr( src_gray, grad_y, ddepth, 0, 1, scale, delta, BORDER_DEFAULT );
  Sobel( src_gray, grad_y, ddepth, 0, 1, 3, scale, delta, BORDER_DEFAULT );
  convertScaleAbs( grad_y, abs_grad_y );

  /// Total Gradient (approximate)
  addWeighted( abs_grad_x, -1.0, abs_grad_y, 1.0, 0, ygrad );
}






// ----------------------Thresholding for horizontal lines-----------------------
	threshold(ygrad,ygrad, 30,255,0);
	/*dilate(grad, grad, Mat(),Point(-1,-1),2 ,1,1);
	dilate(grad, grad, Mat(),Point(-1,-1),2 ,1,1);*/
 Mat element = getStructuringElement( MORPH_RECT , Size(3,3), Point(-1,-1) );
 //Mat element1 = getStructuringElement( MORPH_RECT , Size(3, 1), Point(-1,-1) );
 Mat element1 = getStructuringElement( MORPH_RECT , Size(23, 9), Point(-1,-1) );
 Mat element2 = getStructuringElement( MORPH_RECT , Size(31, 11), Point(-1,-1) );
 erode(ygrad,ygrad,element);
  //dilate( grad, grad, element1 );
  dilate(ygrad,ygrad,element1);
  dilate(ygrad,ygrad,element2);

//------------------------------Thresholdiing Ends-------------------------------





// ----------------------Thresholding for vertical lines--------------------------
threshold(xgrad,xgrad, 30,255,0);


 Mat element3 = getStructuringElement( MORPH_RECT , Size(9, 23), Point(-1,-1) );
 Mat element4 = getStructuringElement( MORPH_RECT , Size(11, 31), Point(-1,-1) );

  erode(xgrad,xgrad,element);
  dilate(xgrad,xgrad,element3);
  dilate(xgrad,xgrad,element4);
//------------------------------Thresholdiing Ends-------------------------------






  vector < vector <Point> > xcontours, ycontours;
  Rect bounding_rect;
  vector < Vec4i > xhierarchy;
  vector < Vec4i > yhierarchy;
  findContours( xgrad, xcontours, xhierarchy,CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE ); // Find the contours in the image
  findContours( ygrad, ycontours, yhierarchy,CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE ); // Find the contours in the image


  double xlargest_area = 0;
  int xlargest_contour_index;
  int xmaxArea;
     for( int i = 0; i< xcontours.size(); i++ ) // iterate through each contour.
      {
       double a=contourArea( xcontours[i],false);  //  Find the area of contour
       if(a>xlargest_area){
       xlargest_area=a;
       xlargest_contour_index=i;                //Store the index of largest contour
       // bounding_rect=boundingRect(contours[i]); // Find the bounding rectangle for biggest contour
       xmaxArea = contourArea(xcontours[i]);
       }
      }



  double ylargest_area = 0;
  int ylargest_contour_index;
  int ymaxArea;
     for( int i = 0; i< ycontours.size(); i++ ) // iterate through each contour.
      {
       double a=contourArea( ycontours[i],false);  //  Find the area of contour
       if(a>ylargest_area){
       ylargest_area=a;
       ylargest_contour_index=i;                //Store the index of largest contour
       // bounding_rect=boundingRect(contours[i]); // Find the bounding rectangle for biggest contour
       ymaxArea = contourArea(ycontours[i]);
       }
      }




ymaxArea *=0.8;
xmaxArea *=0.8;

//drawContours( grad, contours,largest_contour_index, color, CV_FILLED, 8, hierarchy ); // Draw the largest contour using previously stored index.
//rectangle(src, bounding_rect,  Scalar(0,0,255),1, 20,0);

int x_ry=-1 , y_ry=-1, ymax=0;
for( int i = 0; i< ycontours.size(); i++ )
     {
       if(contourArea(ycontours[i])<ymaxArea)
        continue;
       bounding_rect=boundingRect(ycontours[i]);
       rectangle(src, bounding_rect,  Scalar(0,0,255),2, 8,0);
       x_ry = bounding_rect.x + bounding_rect.width/2;
       y_ry = bounding_rect.y + bounding_rect.height/2;
       if(y_ry>ymax)							//Selecting the coordintes with maximum x and y cordinates
       {
       	ymax=y_ry;
	}

       circle(src, Point(x_ry,y_ry), 4, Scalar(0,255,0),8, 8, 0);
       //Scalar color = Scalar(0,255,0);
       //drawContours( src, contours, i, color, 2, 8, hierarchy, 0, Point() );
     }




int x_rx=-1 , y_rx=-1, xmax=0;
for( int i = 0; i< xcontours.size(); i++ )
     {
       if(contourArea(xcontours[i])<xmaxArea)
        continue;
       bounding_rect=boundingRect(xcontours[i]);
       rectangle(src, bounding_rect,  Scalar(0,0,255),2, 8,0);
       x_rx = bounding_rect.x + bounding_rect.width/2;
       y_rx = bounding_rect.y + bounding_rect.height/2;
       if(x_rx>xmax)							//Selecting the coordintes with maximum x cordinates
       {
       	xmax=x_rx;
	}

       circle(src, Point(x_rx,y_rx), 4, Scalar(0,255,0),8, 8, 0);
       //Scalar color = Scalar(0,255,0);
       //drawContours( src, contours, i, color, 2, 8, hierarchy, 0, Point() );
     }



//----------------determining the direction------------------

static int ylastframedist=0;
if (ymax<180 && framenumber%3==0)
	{
		if (ymax-ylastframedist>0)
			cur_y_dir=1;
		else cur_y_dir=-1;
		ylastframedist=ymax;

	}

static int xlastframedist=0;
if (xmax<180 && framenumber%3==0)
	{
		if (xmax-xlastframedist>0)
			cur_x_dir=1;
		else cur_x_dir=-1;
		xlastframedist=xmax;

	}


//--------------------Direction determined--------------------






	if (ymax>100 && ymax<270)
     	{
     		yflag=0;
     	}



     if(ymax>270 && !yflag)
     	{
	yflag++;

	if(yflag==1)
     		{
			cur_y+=cur_y_dir;			//Adds +1 or -1 depending on the direction
     			//cout<<"current y coordinate: "<<cur_y<<endl<<"Current y Direction: "<<cur_y_dir<<endl;
			yflag=-1;
     		}

  	}



if (xmax>100 && xmax<270)
     	{
     		xflag=0;
     	}

  if(xmax>270 && !xflag)
     	{
	xflag++;

	if(xflag==1)
     		{
			cur_x+=cur_x_dir;			//Adds +1 or -1 depending on the direction
     			cout<<"current coordinate: "<<cur_x<<" , "<<cur_y<<"Current x Direction: "<<cur_x_dir<<endl;
			xflag=-1;
     		}

  	}

          if (cur_y>3)
              {msgs.depth=1;
              msgs.offset=1;//offset
              msgs.speed=1;//speed
              }
          else
          {
            msgs.depth=1;
            msgs.offset=0;//offset
            msgs.speed=0;//speed

          }

pub.publish(msgs);
	/// Binary Thresholding

	//threshold(dst,dst, 30,255,0);


	/*dilate(grad, grad, Mat(),Point(-1,-1),2 ,1,1);
	dilate(grad, grad, Mat(),Point(-1,-1),2 ,1,1);*/

	///Making an element(vertical) for dialting and dilating using that element

	//Mat element = getStructuringElement( MORPH_RECT , Size(2, 17), Point(-1,-1) );

	//dilate( dst, dst, element );
int width = src.cols;
int height = src.rows;

    // Display the resulting frame
    imshow( "result", src );

    // Press  ESC on keyboard to exit
    char c=(char)waitKey(25);
    if(c==27)
      break;
  }
  spinOnce();
      loop_rate.sleep();
  // When everything done, release the video capture object
  cap.release();

  // Closes all the frames
  destroyAllWindows();

  return 0;
}
