// Generated by gencpp from file testpkg/testsrv.msg
// DO NOT EDIT!


#ifndef TESTPKG_MESSAGE_TESTSRV_H
#define TESTPKG_MESSAGE_TESTSRV_H

#include <ros/service_traits.h>


#include <testpkg/testsrvRequest.h>
#include <testpkg/testsrvResponse.h>


namespace testpkg
{

struct testsrv
{

typedef testsrvRequest Request;
typedef testsrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct testsrv
} // namespace testpkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::testpkg::testsrv > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::testpkg::testsrv&) { return value(); }
};

template<>
struct DataType< ::testpkg::testsrv > {
  static const char* value()
  {
    return "testpkg/testsrv";
  }

  static const char* value(const ::testpkg::testsrv&) { return value(); }
};


// service_traits::MD5Sum< ::testpkg::testsrvRequest> should match 
// service_traits::MD5Sum< ::testpkg::testsrv > 
template<>
struct MD5Sum< ::testpkg::testsrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::testpkg::testsrv >::value();
  }
  static const char* value(const ::testpkg::testsrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::testpkg::testsrvRequest> should match 
// service_traits::DataType< ::testpkg::testsrv > 
template<>
struct DataType< ::testpkg::testsrvRequest>
{
  static const char* value()
  {
    return DataType< ::testpkg::testsrv >::value();
  }
  static const char* value(const ::testpkg::testsrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::testpkg::testsrvResponse> should match 
// service_traits::MD5Sum< ::testpkg::testsrv > 
template<>
struct MD5Sum< ::testpkg::testsrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::testpkg::testsrv >::value();
  }
  static const char* value(const ::testpkg::testsrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::testpkg::testsrvResponse> should match 
// service_traits::DataType< ::testpkg::testsrv > 
template<>
struct DataType< ::testpkg::testsrvResponse>
{
  static const char* value()
  {
    return DataType< ::testpkg::testsrv >::value();
  }
  static const char* value(const ::testpkg::testsrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TESTPKG_MESSAGE_TESTSRV_H
