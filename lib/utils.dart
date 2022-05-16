import 'dart:math';

class Weight {
  int weight;
  double height;
  late double _bmi;
  Weight({required this.weight, required this.height});

  String getBmi() {
    _bmi = weight / pow(height * 0.3048, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getStatus() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getVerdict() {
    if (_bmi >= 25) {
      return 'You should start working out';
    } else if (_bmi > 18.5) {
      return 'You are Doing Great';
    } else {
      return 'You should eat more';
    }
  }
}
