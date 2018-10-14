#ifndef _ROS_navcon_tval_h
#define _ROS_navcon_tval_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace navcon
{

  class tval : public ros::Msg
  {
    public:
      typedef int16_t _depthright_type;
      _depthright_type depthright;
      typedef int16_t _depthleft_type;
      _depthleft_type depthleft;
      typedef int16_t _offyawfront_type;
      _offyawfront_type offyawfront;
      typedef int16_t _offyawback_type;
      _offyawback_type offyawback;
      typedef int16_t _speedleft_type;
      _speedleft_type speedleft;
      typedef int16_t _speedright_type;
      _speedright_type speedright;

    tval():
      depthright(0),
      depthleft(0),
      offyawfront(0),
      offyawback(0),
      speedleft(0),
      speedright(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        int16_t real;
        uint16_t base;
      } u_depthright;
      u_depthright.real = this->depthright;
      *(outbuffer + offset + 0) = (u_depthright.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_depthright.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->depthright);
      union {
        int16_t real;
        uint16_t base;
      } u_depthleft;
      u_depthleft.real = this->depthleft;
      *(outbuffer + offset + 0) = (u_depthleft.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_depthleft.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->depthleft);
      union {
        int16_t real;
        uint16_t base;
      } u_offyawfront;
      u_offyawfront.real = this->offyawfront;
      *(outbuffer + offset + 0) = (u_offyawfront.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_offyawfront.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->offyawfront);
      union {
        int16_t real;
        uint16_t base;
      } u_offyawback;
      u_offyawback.real = this->offyawback;
      *(outbuffer + offset + 0) = (u_offyawback.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_offyawback.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->offyawback);
      union {
        int16_t real;
        uint16_t base;
      } u_speedleft;
      u_speedleft.real = this->speedleft;
      *(outbuffer + offset + 0) = (u_speedleft.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_speedleft.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->speedleft);
      union {
        int16_t real;
        uint16_t base;
      } u_speedright;
      u_speedright.real = this->speedright;
      *(outbuffer + offset + 0) = (u_speedright.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_speedright.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->speedright);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        int16_t real;
        uint16_t base;
      } u_depthright;
      u_depthright.base = 0;
      u_depthright.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_depthright.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->depthright = u_depthright.real;
      offset += sizeof(this->depthright);
      union {
        int16_t real;
        uint16_t base;
      } u_depthleft;
      u_depthleft.base = 0;
      u_depthleft.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_depthleft.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->depthleft = u_depthleft.real;
      offset += sizeof(this->depthleft);
      union {
        int16_t real;
        uint16_t base;
      } u_offyawfront;
      u_offyawfront.base = 0;
      u_offyawfront.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_offyawfront.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->offyawfront = u_offyawfront.real;
      offset += sizeof(this->offyawfront);
      union {
        int16_t real;
        uint16_t base;
      } u_offyawback;
      u_offyawback.base = 0;
      u_offyawback.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_offyawback.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->offyawback = u_offyawback.real;
      offset += sizeof(this->offyawback);
      union {
        int16_t real;
        uint16_t base;
      } u_speedleft;
      u_speedleft.base = 0;
      u_speedleft.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_speedleft.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->speedleft = u_speedleft.real;
      offset += sizeof(this->speedleft);
      union {
        int16_t real;
        uint16_t base;
      } u_speedright;
      u_speedright.base = 0;
      u_speedright.base |= ((uint16_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_speedright.base |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->speedright = u_speedright.real;
      offset += sizeof(this->speedright);
     return offset;
    }

    const char * getType(){ return "navcon/tval"; };
    const char * getMD5(){ return "dda295200907eed02efd0f3614e26ed4"; };

  };

}
#endif