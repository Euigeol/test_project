// Generated by gencpp from file testpkg/calc_area.msg
// DO NOT EDIT!


#ifndef TESTPKG_MESSAGE_CALC_AREA_H
#define TESTPKG_MESSAGE_CALC_AREA_H

#include <ros/service_traits.h>


#include <testpkg/calc_areaRequest.h>
#include <testpkg/calc_areaResponse.h>


namespace testpkg
{

struct calc_area
{

typedef calc_areaRequest Request;
typedef calc_areaResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct calc_area
} // namespace testpkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::testpkg::calc_area > {
  static const char* value()
  {
    return "a72cfd8f27680b80f4ad1d29267c5ec1";
  }

  static const char* value(const ::testpkg::calc_area&) { return value(); }
};

template<>
struct DataType< ::testpkg::calc_area > {
  static const char* value()
  {
    return "testpkg/calc_area";
  }

  static const char* value(const ::testpkg::calc_area&) { return value(); }
};


// service_traits::MD5Sum< ::testpkg::calc_areaRequest> should match 
// service_traits::MD5Sum< ::testpkg::calc_area > 
template<>
struct MD5Sum< ::testpkg::calc_areaRequest>
{
  static const char* value()
  {
    return MD5Sum< ::testpkg::calc_area >::value();
  }
  static const char* value(const ::testpkg::calc_areaRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::testpkg::calc_areaRequest> should match 
// service_traits::DataType< ::testpkg::calc_area > 
template<>
struct DataType< ::testpkg::calc_areaRequest>
{
  static const char* value()
  {
    return DataType< ::testpkg::calc_area >::value();
  }
  static const char* value(const ::testpkg::calc_areaRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::testpkg::calc_areaResponse> should match 
// service_traits::MD5Sum< ::testpkg::calc_area > 
template<>
struct MD5Sum< ::testpkg::calc_areaResponse>
{
  static const char* value()
  {
    return MD5Sum< ::testpkg::calc_area >::value();
  }
  static const char* value(const ::testpkg::calc_areaResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::testpkg::calc_areaResponse> should match 
// service_traits::DataType< ::testpkg::calc_area > 
template<>
struct DataType< ::testpkg::calc_areaResponse>
{
  static const char* value()
  {
    return DataType< ::testpkg::calc_area >::value();
  }
  static const char* value(const ::testpkg::calc_areaResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TESTPKG_MESSAGE_CALC_AREA_H
