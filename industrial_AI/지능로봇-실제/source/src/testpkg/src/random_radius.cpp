#include "ros/ros.h"
#include "testpkg/calc_area.h"
#include "testpkg/custom_msg.h"
#include <cstdlib>
#include <iostream>
#include <vector>

std::vector<long int> radiusVector;  // 반지름 저항 벡터 선언
std::vector<double> areaVector;  // 넓이 저장 벡터 선

int main(int argc, char **argv)
{
	int i, count;
	long int radius[10];
	ros::init(argc, argv, "random_radius");

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<testpkg::calc_area>("test_arv");

	ros::Publisher chatter_pub = n.advertise<testpkg::custom_msg>("RadiusToArea", 1000);
	ros::Rate loop_rate(1);//1hz (1초)

	testpkg::calc_area srv;

	while(ros::ok())
	{
		testpkg::custom_msg pub_data;
		
		for(i=0; i<10; i++) {

			radius[i] = (long int)rand()%100; // 1~100 까지 랜덤 함수 생성
			srv.request.radius_array[i] = radius[i];
		}

		if (client.call(srv))
		{
			for(i=0;i<10;i++) 
				ROS_INFO("radius = %ld, area = %lf",radius[i], srv.response.calc_array[i]);  // 반지름과 둘래값 출
		}

		pub_data.header.frame_id = " ";
		pub_data.header.seq = count;
		pub_data.header.stamp = ros::Time::now();

		for(i=0; i<10; i++) {  // 랜덤 정수값 push
			radiusVector.push_back(radius[i]);	
			//radiusVector.erase(radiusVector.begin());
		}
		pub_data.radius = radiusVector;
		for(i=0; i<10; i++) radiusVector.erase(radiusVector.begin());  // 벡터 내용 삭제


		for(i=0; i<10; i++) {  // 변환된 넓이값 push
			areaVector.push_back(srv.response.calc_array[i]);
			//areaVector.erase(areaVector.begin());
		}
		pub_data.area = areaVector;
		for(i=0; i<10; i++) areaVector.erase(areaVector.begin());   // 벡터 내용 삭제


		chatter_pub.publish(pub_data);  // 반지름 메시지 발
		ros::spinOnce();  // 콜백 함수 호출
		loop_rate.sleep();  // 일시 정지
		++count;  // 카운트 증가
	}
	return 0;

}
