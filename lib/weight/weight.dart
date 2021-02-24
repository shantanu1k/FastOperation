import 'dart:math';
enum WEIGHT{
  grams,
  kilograms,
  pounds,
  ounces,
  miligrams,
  tonnes
}
class weight{
  num convert({num value,WEIGHT from, WEIGHT to}){
    num ans = 0;
    switch(from){
      case WEIGHT.grams:
        if(to == WEIGHT.miligrams) ans = value*1000;
        else if(to == WEIGHT.grams) ans = value;
        else if(to == WEIGHT.kilograms) ans = value*0.001;
        else if(to == WEIGHT.ounces) ans = value*3.5274*pow(10,-2);
        else if(to == WEIGHT.pounds) ans = value*2.205*pow(10,-3);
        else if(to == WEIGHT.tonnes) ans = value*pow(10,-6);
        break;
      case WEIGHT.kilograms:
        if(to == WEIGHT.miligrams) ans = value*pow(10,6);
        else if(to == WEIGHT.grams) ans = value*pow(10,3);
        else if(to == WEIGHT.kilograms) ans = value;
        else if(to == WEIGHT.ounces) ans = value*35.274;
        else if(to == WEIGHT.pounds) ans = value*2.204623;
        else if(to == WEIGHT.tonnes) ans = value*pow(10,-3);
        break;
      case WEIGHT.pounds:
        if(to == WEIGHT.miligrams) ans = value*453592.4;
        else if(to == WEIGHT.grams) ans = value*453.5924;
        else if(to == WEIGHT.kilograms) ans = value*0.453592;
        else if(to == WEIGHT.ounces) ans = value*16;
        else if(to == WEIGHT.pounds) ans = value;
        else if(to == WEIGHT.tonnes) ans = value*pow(10,-4)*4.54;
        break;
      case WEIGHT.ounces:
        if(to == WEIGHT.miligrams) ans = value*28349.52;
        else if(to == WEIGHT.grams) ans = value*28.34952;
        else if(to == WEIGHT.kilograms) ans = value*0.02835;
        else if(to == WEIGHT.ounces) ans = value;
        else if(to == WEIGHT.pounds) ans = value*0.0625;
        else if(to == WEIGHT.tonnes) ans = value*pow(10,-5)*2.835;
        break;
      case WEIGHT.miligrams:
        if(to == WEIGHT.miligrams) ans = value;
        else if(to == WEIGHT.grams) ans = value*0.001;
        else if(to == WEIGHT.kilograms) ans = value*pow(10,-6);
        else if(to == WEIGHT.ounces) ans = value*3.5274*pow(10,-5);
        else if(to == WEIGHT.pounds) ans = value*2.205*pow(10,-6);
        else if(to == WEIGHT.tonnes) ans = value*pow(10,-9);
        break;
      case WEIGHT.tonnes:
        if(to == WEIGHT.miligrams) ans = value*pow(10,9);
        else if(to == WEIGHT.grams) ans = value*pow(10,6);
        else if(to == WEIGHT.kilograms) ans = value*pow(10,3);
        else if(to == WEIGHT.ounces) ans = value*3.52745*pow(10,4);
        else if(to == WEIGHT.pounds) ans = value*2.205*pow(10,3);
        else if(to == WEIGHT.tonnes) ans = value;
        break;
    }
    return ans;
  }
}