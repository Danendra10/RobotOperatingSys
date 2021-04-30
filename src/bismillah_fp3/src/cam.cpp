#include "ros/ros.h"
#include <vector>
#include "opencv2/opencv.hpp"
#include "std_msgs/Float64.h"
#include "bismillah_fp3/ball_coor.h"
#include "bismillah_fp3/potition.h"
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "std_msgs/Int64.h"

using namespace std;
using namespace cv;

class ballPotition{
    private:
        int64_t x, y;
    public:
        void setBallPot(int64_t x,int64_t y){
            this->x = x;
            this->y = y;
        }
        void getBallPot(int64_t *x,int64_t *y){
            *x = this->x;
            *y = this->y;
        }
};

int main(int argc, char **argv){
    ros::init(argc, argv, "Robot_Camera");
    ros::NodeHandle NH;
    bismillah_fp3::ball_coor coordinate;
    ros::Publisher pubCam = NH.advertise<bismillah_fp3::ball_coor>("Sending_balls_coordinate", 256);
    ballPotition ball;

    //define element for thresh
    // namedWindow("Trackbars", WINDOW_AUTOSIZE);
    int LH= 0, UH= 29, LS = 0,  US = 179, LV = 0, UV = 255;

    //sliders
    // createTrackbar("L_H", "Trackbars", &LH, 179);
    // createTrackbar("U_H", "Trackbars", &UH, 179);
    // createTrackbar("L_S", "Trackbars", &LS, 255);
    // createTrackbar("U_S", "Trackbars", &US, 255);
    // createTrackbar("L_V", "Trackbars", &LV, 255);
    // createTrackbar("U_V", "Trackbars", &UV, 255);

    while(ros::ok()){
        //detect gambar
        Mat real_img;
        real_img = imread("/home/danendra2210/FP_IRIS/src/bismillah_fp3/img/case-3.png", IMREAD_COLOR);
        
        //resize win gambar
        Mat resized_img;
        resize(real_img, resized_img, Size(1200,800));

        //rgb to hsv
        Mat hsv_img;
        cvtColor(resized_img, hsv_img, COLOR_BGR2HSV);
        imshow("detect", hsv_img);

        //hsv to canny
        // Mat canny_img;
        // Canny(hsv_img, canny_img, 46, 78, 3, 0);

        //make thresh
        Mat thresh_img;
        inRange(hsv_img, Scalar(LH, LS, LV), Scalar(UH, US, UV), thresh_img);

        Mat hasil_kontur;
        vector<vector<Point>> konturss;
        vector<Vec4i> hirarki;

        findContours(thresh_img, konturss, hirarki, RETR_TREE, CHAIN_APPROX_SIMPLE);
        
        for (int i = 0; i < konturss.size(); i++){
            vector<Point> kontur_baru = konturss[i];
            Point2f center_baru;
            float radius;
            minEnclosingCircle(kontur_baru, center_baru, radius);
            if (radius > 30 && radius < 90)
            {
                // cout << "x = " << center_baru.x << endl;
                // cout << "y = " << center_baru.y << endl;
                ball.setBallPot(center_baru.x, center_baru.y);
                ball.getBallPot(&coordinate.x, &coordinate.y);
                pubCam.publish(coordinate);
    
            }
        }

        imshow("detect", thresh_img);
        char c = (char)waitKey(25);
        if (c==27)
            break;
    }
    destroyAllWindows();
}