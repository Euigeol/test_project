#include "ros/ros.h"
#include "testpkg/calc_area.h"

bool add(testpkg::calc_area::Request  &req,
	 testpkg::calc_area::Response &res)
{
	int i;
	for(i=0; i<10; i++){
		res.calc_array[i] = (double)(req.radius_array[i] * req.radius_array[i]) * 3.14159265358;  // 반지름값 가져온것을 넓이로 환
		ROS_INFO("radius %d = [%ld]", i, req.radius_array[i]);  // 반지름값 출
		ROS_INFO("area %d = [%lf]", i, res.calc_array[i]);  // 넓이 출력
	}
	return true;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "calc_server");
	ros::NodeHandle n;

	ros::ServiceServer service = n.advertiseService("test_arv", add);
	ROS_INFO("Ready to add radius.");
	ros::spin();

	return 0;
}
