import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String stringNumber){
    int exponent = stringNumber.length;
    List<double> numbers = stringNumber.split("").map(double.parse).toList();
    num sum = 0;
    for(double x in numbers){
      sum += pow(x, exponent);
    }
    if(sum == num.parse(stringNumber)){
      return true;
    }
    return false;
  }
}
