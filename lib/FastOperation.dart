library FastOperation;
import 'dart:math';
class FastOperation {
///Use any int,float,Double values, these functions will work
  num SumNum(List param){
    num sum = 0;
    param.forEach((value) => sum+=value);
    return sum;
  } 
  num MultiplyNum(num a,num b){
    return a*b;
  }
  num DivideNum(num a,num b){
    return a/b;
  }
  num power(num a,num b){
    return pow(a,b);
  }
  num DecimalToOctal(num n){
  num octal = 0;
  int multiplier = 0;
  while(n>0){
    octal = octal + (n%8)*pow(10,multiplier);
    n = (n/8).toInt();
    multiplier++;
  }
  return octal.toInt();
 }
}
