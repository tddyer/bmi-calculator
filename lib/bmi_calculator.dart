import 'dart:math';

class BMICalculator {

  BMICalculator({this.height, this.weight});

  final int height;
  final int weight;
  
  double _bmi;

  String calculateBMI() {
    _bmi = (weight / pow(height, 2)) * 703;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return "Overweight";
    else if (_bmi > 18.5)
      return "Normal";
    else
      return "Underweight";
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return "Your body weight is currently higher than the recommended weight. Consider some small changes such as taking the stairs over the elevator.";
    else if (_bmi > 18.5)
      return "Your body weight is exactly where it should be, keep on keeping on!";
    else
      return "Your body weight is a bit lower than the recommended weight, treat yourself to your favorite food or try lifting weights to gain muscle mass.";
  }
}