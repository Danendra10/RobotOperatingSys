#include "ros/ros.h"
#include "bismillah_fp3/potition.h"
#include "bismillah_fp3/ball_coor.h"

class Pot
{
    private:
        int64_t robotxPot = 0;
        int64_t robotyPot = 0;
        int64_t robotangle = 0;
        int64_t xpot, ypot;
        int64_t vx, vy;
        int64_t angle, vtheta;
        int64_t fakeAngle;

    public:
        void setVal(int64_t xpot, int64_t ypot, int64_t angle, int64_t vx, int64_t vy, int64_t vtheta)
        {
            this->xpot = xpot;
            this->ypot = ypot;
            this->angle = angle;
            this->vx = vx;
            this->vy = vy;
            this->vtheta = vtheta;

            if(angle > 180)
            {
                this->fakeAngle = angle - 360;
            }

            else
            {
                this->fakeAngle = angle;
            }
        }

        void Move(bool Finish)
        {
            if (Finish == 0)
            {
                // ROS_INFO("AMAN BOS?");
                if(this->robotxPot + this->vx <=this->xpot)
                {
                    this->robotxPot += this->vx;
                }
                else
                {
                    this->robotxPot = this->xpot;
                }
                if(this->robotyPot + this->vy <= this->ypot)
                {
                    this->robotyPot += this->vy;
                }
                else
                {
                    this->robotyPot = this->ypot;
                }
                if(this->robotangle + this->vtheta <=this->angle)
                {
                    if (this->robotangle + this->vtheta > 180)
                    {
                        this->robotangle += this->vtheta;
                        this->fakeAngle = robotangle - 360;
                    }
                    else
                    {
                        this->robotangle += this->vtheta;
                        this->fakeAngle += this->vtheta;
                    }
                }
                // ROS_INFO("ROBOT POTITION:");
                // ROS_INFO("X: %ld", this->robotxPot);
                // ROS_INFO("Y: %ld", this->robotyPot);
                // ROS_INFO("Sudut: %ld", this->fakeAngle);
                // ROS_INFO(" ");
            }
        }
        void getPot(int64_t *xpot, int64_t *ypot, int64_t *angle, int64_t *x0, int64_t *y0, int64_t *theta0)
        {
            *xpot = this->xpot;
            *ypot = this->ypot;
            *angle = this->angle;
            *x0 = this->robotxPot;
            *y0 = this->robotyPot;
            *theta0 = this->robotangle;
        }
};

Pot robot;

void movingMotor(const bismillah_fp3::potition::ConstPtr &msg)
{
    int64_t ballxPot, ballyPot;
    int64_t ballAngle;
    int64_t botxPot, botyPot;
    int64_t botAngle;
    bool botMove = 0;
    bool Finish = 0;
    robot.setVal(msg->ballx, msg->bally, msg->sudut, msg->vx, msg->vy, msg->vtheta);
    robot.getPot(&ballxPot, &ballyPot, &ballAngle, &botxPot, &botyPot, &botAngle);

    if(msg->ballx == 0 && msg->bally == 0)
    {
        botMove = 0;
    }
    else
    {
        botMove = 1;
    }

    while(!Finish && botMove == 1)
    {
        robot.getPot(&ballxPot, &ballyPot, &ballAngle, &botxPot, &botyPot, &botAngle);

        if(botxPot + msg->vx >= ballxPot && botyPot + msg->vy >= ballyPot && botAngle + msg->vtheta >= ballAngle)
        {
            Finish = 1;
            botMove = 0;
        }
        robot.Move(Finish);
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "Motor");

    ros::NodeHandle NH;

    ros::Subscriber subs = NH.subscribe("send_to_motor", 512, movingMotor);

    ros::spin();

    return 0;
}