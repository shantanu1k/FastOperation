import 'package:fast_operation/fast_operation.dart';
void main(){
  var degrees = Angle().convert(value: 1.232,from: ANGLE.radians,to: ANGLE.degrees);
  print(degrees); //70.5884256
  var pounds = Weight().convert(value: 80.21,from: WEIGHT.kilograms,to: WEIGHT.pounds);
  print(pounds); //176.83281083
  var octal = BaseConverter().decimalToOctal(312);
  print(octal); //470
  var kelvin = Temperature().convert(value: 95,from: TEMPERATURE.fahrenheit,to: TEMPERATURE.kelvin);
  print(kelvin); //308.15
  var feet = Distance().convert(value: 379,from: DISTANCE.meter,to: DISTANCE.feet);
  print(feet); //1243.499
    
}
