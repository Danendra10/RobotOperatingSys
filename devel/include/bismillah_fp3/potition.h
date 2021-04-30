// Generated by gencpp from file bismillah_fp3/potition.msg
// DO NOT EDIT!


#ifndef BISMILLAH_FP3_MESSAGE_POTITION_H
#define BISMILLAH_FP3_MESSAGE_POTITION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace bismillah_fp3
{
template <class ContainerAllocator>
struct potition_
{
  typedef potition_<ContainerAllocator> Type;

  potition_()
    : ballx(0)
    , bally(0)
    , sudut(0)
    , vx(0)
    , vy(0)
    , vtheta(0)  {
    }
  potition_(const ContainerAllocator& _alloc)
    : ballx(0)
    , bally(0)
    , sudut(0)
    , vx(0)
    , vy(0)
    , vtheta(0)  {
  (void)_alloc;
    }



   typedef int64_t _ballx_type;
  _ballx_type ballx;

   typedef int64_t _bally_type;
  _bally_type bally;

   typedef int64_t _sudut_type;
  _sudut_type sudut;

   typedef int64_t _vx_type;
  _vx_type vx;

   typedef int64_t _vy_type;
  _vy_type vy;

   typedef int64_t _vtheta_type;
  _vtheta_type vtheta;





  typedef boost::shared_ptr< ::bismillah_fp3::potition_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bismillah_fp3::potition_<ContainerAllocator> const> ConstPtr;

}; // struct potition_

typedef ::bismillah_fp3::potition_<std::allocator<void> > potition;

typedef boost::shared_ptr< ::bismillah_fp3::potition > potitionPtr;
typedef boost::shared_ptr< ::bismillah_fp3::potition const> potitionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bismillah_fp3::potition_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bismillah_fp3::potition_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bismillah_fp3::potition_<ContainerAllocator1> & lhs, const ::bismillah_fp3::potition_<ContainerAllocator2> & rhs)
{
  return lhs.ballx == rhs.ballx &&
    lhs.bally == rhs.bally &&
    lhs.sudut == rhs.sudut &&
    lhs.vx == rhs.vx &&
    lhs.vy == rhs.vy &&
    lhs.vtheta == rhs.vtheta;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bismillah_fp3::potition_<ContainerAllocator1> & lhs, const ::bismillah_fp3::potition_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bismillah_fp3

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bismillah_fp3::potition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bismillah_fp3::potition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bismillah_fp3::potition_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bismillah_fp3::potition_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bismillah_fp3::potition_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bismillah_fp3::potition_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bismillah_fp3::potition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "db8c61c51d29c39ebff20f8165e09305";
  }

  static const char* value(const ::bismillah_fp3::potition_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdb8c61c51d29c39eULL;
  static const uint64_t static_value2 = 0xbff20f8165e09305ULL;
};

template<class ContainerAllocator>
struct DataType< ::bismillah_fp3::potition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bismillah_fp3/potition";
  }

  static const char* value(const ::bismillah_fp3::potition_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bismillah_fp3::potition_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 ballx\n"
"int64 bally\n"
"int64 sudut\n"
"int64 vx\n"
"int64 vy\n"
"int64 vtheta\n"
;
  }

  static const char* value(const ::bismillah_fp3::potition_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bismillah_fp3::potition_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ballx);
      stream.next(m.bally);
      stream.next(m.sudut);
      stream.next(m.vx);
      stream.next(m.vy);
      stream.next(m.vtheta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct potition_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bismillah_fp3::potition_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bismillah_fp3::potition_<ContainerAllocator>& v)
  {
    s << indent << "ballx: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ballx);
    s << indent << "bally: ";
    Printer<int64_t>::stream(s, indent + "  ", v.bally);
    s << indent << "sudut: ";
    Printer<int64_t>::stream(s, indent + "  ", v.sudut);
    s << indent << "vx: ";
    Printer<int64_t>::stream(s, indent + "  ", v.vx);
    s << indent << "vy: ";
    Printer<int64_t>::stream(s, indent + "  ", v.vy);
    s << indent << "vtheta: ";
    Printer<int64_t>::stream(s, indent + "  ", v.vtheta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BISMILLAH_FP3_MESSAGE_POTITION_H
