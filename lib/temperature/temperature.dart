import 'dart:math';
///enumeration for temperature units
enum TEMPERATURE{
  celsius,
  fahrenheit,
  kelvin
}
class temperature{
  num convert({num value,TEMPERATURE from, TEMPERATURE to}){
    num ans = 0;
    switch(from){
      case TEMPERATURE.celsius:
        if(to == TEMPERATURE.celsius) ans = value;
        else if(to == TEMPERATURE.fahrenheit) ans = (value*1.8)+32;
        else if(to == TEMPERATURE.kelvin) ans = value+273.15;
        break;
      case TEMPERATURE.fahrenheit:
        if(to == TEMPERATURE.celsius) ans = (value-32)*5/9;
        else if(to == TEMPERATURE.fahrenheit) ans = value;
        else if(to == TEMPERATURE.kelvin) ans = (value-32)*5/9+273.15;
        break;
      case TEMPERATURE.kelvin:
        if(to == TEMPERATURE.celsius) ans = value-273.15;
        else if(to == TEMPERATURE.fahrenheit) ans = (value-273.15)*1.8+32;
        else if(to == TEMPERATURE.kelvin) ans = value;
        break;
    }
    return ans;
  }
}