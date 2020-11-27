import 'dart:math';
class CalculatorBrain {

  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;
  double bmi;

  String calculateBMI()
  {
    bmi = weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
  String getResult()
  {
    String resultText;
    bmi >= 25 ? resultText = 'Overweight' : bmi > 18.5 ? resultText = 'Normal' : resultText = 'Underweight';
    return resultText;
  }
  String getInterpretation()
  {
    String interpretationText;
    bmi >= 25 ? interpretationText = 'You have higher than normal body weight. Try to exercise more.' :
    bmi > 18.5 ? interpretationText = 'You have a normal body weight. Good Job!' :
                 interpretationText = 'You have a lower body weight. You can eat a bit more.';
    return interpretationText;
  }

}