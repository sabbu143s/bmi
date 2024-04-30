import 'dart:math';

class CalculatorBrain
{
  CalculatorBrain({required  this.height, required this.weight});
  final int height;
  final int weight;
  late double bmi ;
  String calculatorBmi()
  {
    bmi = weight / pow(height/100 ,2);
    return bmi.toStringAsFixed(1); 
  }
  String getRes()
  {
    if(bmi >=25)
    {
      return "Over Weight";
    }
    else if (bmi >18)
    {
     return "Normal";
    }
    else 
    {
      return "under Weight";
    }
  }
  String getint()
  {
    if(bmi >=25)
    {
      return "Over Weight,please do excersice";
    }
    else if (bmi >18)
    {
     return "Normal,perfect and healthy";
    }
    else 
    {
      return "under Weight,eat more protien and be healthy";
    }
  }
}