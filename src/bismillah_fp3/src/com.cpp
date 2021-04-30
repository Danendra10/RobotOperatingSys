#include "ros/ros.h"
#include "bismillah_fp3/ball_coor.h"
#include "bismillah_fp3/potition.h"

class Messages
{
    private:
        int64_t coorx, coory, theta_target;
        int64_t vx, vy, vtheta;
    public:
        Messages(int64_t theta_target, int64_t vx, int64_t vy, int64_t vtheta)
        {
            if (theta_target<0)
                this->theta_target = 360 + theta_target;
            else
                this->theta_target = theta_target;
                
            this->vx = vx;
            this->vy = vy;
            this->vtheta = vtheta;
        }

        void setBallPot(int64_t xpot, int64_t ypot)
        {
            this->coorx = xpot;
            this->coory = ypot;
        }

        void getValues(int64_t *coorx, int64_t *coory, int64_t *theta_target, int64_t *vx, int64_t *vy, int64_t *vtheta)
        {
            *coorx = this->coorx;
            *coory = this->coory;
            *theta_target = this->theta_target;
            *vx = this->vx;
            *vy = this->vy;
            *vtheta = this->vtheta;
        }
};

ros::Publisher pubToMotor;

ros::Subscriber subToCam;

ros::Timer timer;

Messages ballCoor(-30, 2, 1, 1);

void forSub (const bismillah_fp3::ball_coor::ConstPtr &pot)
{
    ballCoor.setBallPot(pot->x, pot->y);
    ROS_INFO("%ld %ld", pot->x, pot->y);
}


void publishTime (const ros::TimerEvent &timer)
{
    bismillah_fp3::potition msgForMotor;
    int64_t coorx, coory, theta_target;
    int64_t vx, vy, vtheta;
    ballCoor.getValues(&coorx, &coory, &theta_target, &vx, &vy, &vtheta);
    // ROS_INFO("%f %f %d %f %f %d", coorx, coory, theta_target, vx, vy, vtheta);
    msgForMotor.ballx = coorx;
    msgForMotor.bally = coory;
    msgForMotor.sudut = theta_target;
    msgForMotor.vx = vx;
    msgForMotor.vy = vy;
    msgForMotor.vtheta = vtheta;
    pubToMotor.publish(msgForMotor);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "PC");
    ros::NodeHandle NH;
    ros::MultiThreadedSpinner MTS;

    subToCam = NH.subscribe("Sending_balls_coordinate", 256, forSub);

    timer = NH.createTimer(ros::Duration(0.3), publishTime);

    pubToMotor = NH.advertise<bismillah_fp3::potition>("send_to_motor", 512);

    MTS.spin();
}