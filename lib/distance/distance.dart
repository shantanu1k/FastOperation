import 'dart:math';
enum DISTANCE{
  kilometer,
  milimeter,
  meter,
  miles,
  centimeter,
  inch,
  feets,
}
class distance{
  num convert({num value,DISTANCE from,DISTANCE to}){
    num ans = 0;
    switch(from){
      case DISTANCE.kilometer:
        if(to == DISTANCE.centimeter) ans = value*pow(10,5);
        else if(to == DISTANCE.feets) ans = 3280.84*value;
        else if(to == DISTANCE.miles) ans = 0.621371*value;
        else if(to == DISTANCE.milimeter) ans = value*pow(10,6);
        else if(to == DISTANCE.meter) ans = value*pow(10,3);
        else if(to == DISTANCE.inch) ans = value*39370.08;
        else if(to == DISTANCE.kilometer) ans = value;
        break;
      case DISTANCE.milimeter:
        if(to == DISTANCE.centimeter) ans = 0.1*value;
        else if(to == DISTANCE.feets) ans = value*0.003281;
        else if(to == DISTANCE.inch) ans = value*0.03937;
        else if(to == DISTANCE.kilometer) ans = value*pow(10,-7);
        else if(to == DISTANCE.meter) ans = value*pow(10,-3);
        else if(to == DISTANCE.miles) ans = value*pow(10,-7)*6.214;
        else if(to == DISTANCE.milimeter) ans = value;
        break;
      case DISTANCE.meter:
        if(to == DISTANCE.centimeter) ans = 100*value;
        else if(to == DISTANCE.feets) ans = value*3.281;
        else if(to == DISTANCE.inch) ans = value*39.37;
        else if(to == DISTANCE.kilometer) ans = value*pow(10,-3);
        else if(to == DISTANCE.meter) ans = value;
        else if(to == DISTANCE.miles) ans = value*pow(10,-4)*6.214;
        else if(to == DISTANCE.milimeter) ans = value*1000;
        break;
      case DISTANCE.miles:
        if(to == DISTANCE.centimeter) ans = 160934.4*value;
        else if(to == DISTANCE.feets) ans = value*5280;
        else if(to == DISTANCE.inch) ans = value*63360;
        else if(to == DISTANCE.kilometer) ans = value*1.609344;
        else if(to == DISTANCE.meter) ans = value*1609.344;
        else if(to == DISTANCE.miles) ans = value;
        else if(to == DISTANCE.milimeter) ans = value*1609344;
        break;
      case DISTANCE.centimeter:
        if(to == DISTANCE.centimeter) ans = value;
        else if(to == DISTANCE.feets) ans = value*0.03281;
        else if(to == DISTANCE.inch) ans = value*0.3937;
        else if(to == DISTANCE.kilometer) ans = value*pow(10,-6);
        else if(to == DISTANCE.meter) ans = value*pow(10,-2);
        else if(to == DISTANCE.miles) ans = value*pow(10,-6)*6.214;
        else if(to == DISTANCE.milimeter) ans = value*10;
        break;
      case DISTANCE.inch:
        if(to == DISTANCE.centimeter) ans = 2.54*value;
        else if(to == DISTANCE.feets) ans = value*0.083333;
        else if(to == DISTANCE.inch) ans = value;
        else if(to == DISTANCE.kilometer) ans = value*pow(10,-6)*25.4;
        else if(to == DISTANCE.meter) ans = value*pow(10,-4)*254;
        else if(to == DISTANCE.miles) ans = value*pow(10,-5)*1.57828;
        else if(to == DISTANCE.milimeter) ans = value*25.4;
        break;
      case DISTANCE.feets:
        if(to == DISTANCE.centimeter) ans = 30.48*value;
        else if(to == DISTANCE.feets) ans = value;
        else if(to == DISTANCE.inch) ans = value*12;
        else if(to == DISTANCE.kilometer) ans = value*pow(10,-4)*3.048;
        else if(to == DISTANCE.meter) ans = value*0.3048;
        else if(to == DISTANCE.miles) ans = value*pow(10,-4)*1.894;
        else if(to == DISTANCE.milimeter) ans = value*304.8;
        break;
    }
    return ans;
  }
}
