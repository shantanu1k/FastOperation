import 'dart:math';
import 'package:FastOperation/distance/distance.dart';
class weight{
  num poundToMiligram(num pound){
    num mili = 453592.4*pound;
    return mili;
  }
  num miligramToPound(num mili){
    num pound = 2.20462*pow(10,-6)*mili;
    return pound;
  }
  num poundToGram(num pound){
    num gram = 453.5924*pound;
    return gram;
  }
  num gramToPound(num gram){
    num pound = 2.205*pow(10,-3)*gram;
  }
  num poundToKilo(num pound){
    num kilo = 0.453592*pound;
    return kilo;
  }
  num kiloToPound(num kilo){
    num pound = 2.204623*kilo;
    return pound;
  }

}