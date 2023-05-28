import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain(
    this.height,
    this.weight,
  );
  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "you have a heiger then body weight .try to exercise more.";
    } else if (_bmi > 18.5) {
      return "you have a normal body weight . good job!";
    } else {
      return "you have a lower then normal body weight. you can eat a bit more";
    }
  }
}
