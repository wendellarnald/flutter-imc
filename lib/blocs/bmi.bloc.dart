import 'package:flutter_masked_text/flutter_masked_text.dart';

class BmiBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Fill in the fields to calculate BMI";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text) / 100;
    double imc = weight / (height * height);

    if (imc < 18.6) {
      result = "Under weight (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Ideal weight (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 29.9) {
      result = "Slightly overweight (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 34.9) {
      result = "Grade I obesity (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Grade II obesity (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Grade III obesity (${imc.toStringAsPrecision(2)})";
    }
  }
}
