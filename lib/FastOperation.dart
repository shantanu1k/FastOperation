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
}
