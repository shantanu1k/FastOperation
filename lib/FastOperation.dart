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
 String reverseString(String input) {
    var chars = input.split('');
    return chars.reversed.join();
  }
 String DecimalToHex(int n){
  String s = "";
  int r = 3;
  while(n>0){
    r = n % 16;
    if(r<=9){
      String temp = "$r";
      s = "${s}"+"${temp}";
    }
    else{
      if(r == 10) s = s+"A";
      else if(r == 11)  s = "${s}"+"B";
      else if(r == 12)  s = "${s}"+"C";
      else if(r == 13)  s = "${s}"+"D";
      else if(r == 14)  s = "${s}"+"E";
      else if(r == 15)  s = "${s}"+"F";
    }
    n = n~/16;
  }
  s = reverseString(s);
  return s;
 }
 String DecimalToBinary(int n){
  String binary = "";
  int r = 0;
  while(n>0){
    r = n%2;
    if(r%2==0) binary = "${binary}" + "0";
    else binary = "${binary}" + "1";
    n = n ~/ 2;
  }
  binary = reverseString(binary);
  return binary;
 }
}
