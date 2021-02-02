#include "ros/ros.h"
#include "testpkg/custom_msg.h"
#include <iostream>

void msgCallback(const testpkg::custom_msg::ConstPtr& msg)
{
	std::cout << "callback!\n";
	std::cout << "msg->header.frame_id " << msg->header.frame_id << "\n";
	std::cout << "msg->header.seq " << msg->header.seq << "\n";
	std::cout << "msg->header.stamp " << msg->header.stamp << "\n";

	std::cout << "msg->radiusarray.push_back ";
	for (int i = 0; i < 10;i++)
	{
		std::cout << " " << msg->radiusarray.at(i);
	}
	std::cout << std::endl;
	for (int i = 0; i < 10;i++)
	{
		std::cout << " " << msg->areaarray.at(i);
	}
	std::cout << std::endl;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "custommsg_sub");
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("RadiusToArea", 1000, msgCallback);
	ros::spin();
	return 0;
}
