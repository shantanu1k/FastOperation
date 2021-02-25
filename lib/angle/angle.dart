///enumeration for angle units
enum ANGLE{
  radians,
  gradians,
  degrees
}
class Angle{
  num convert({num value,ANGLE from,ANGLE to}){
    num ans = 0;
    switch(from){
      case ANGLE.radians:
        if(to == ANGLE.degrees) ans = value*57.2958;
        else if(to == ANGLE.gradians) ans =  value*63.66198;
        else if(to == ANGLE.radians) ans = value;
        break;
      case ANGLE.gradians:
        if(to == ANGLE.degrees) ans = value*0.9;
        else if(to == ANGLE.gradians) ans =  value;
        else if(to == ANGLE.radians) ans = value*0.015708;
        break;
      case ANGLE.degrees:
        if(to == ANGLE.degrees) ans = value;
        else if(to == ANGLE.gradians) ans =  value*1.111;
        else if(to == ANGLE.radians) ans = value*0.017453;
        break;
    }
    return ans;
  }
}