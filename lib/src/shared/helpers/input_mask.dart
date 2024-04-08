import 'package:flutter/services.dart';

class InputMask {
  static TextInputFormatter get nomeyFormatter {
    return MoneyFormatter();
  }
}

class UtilFormatter {
  static String formatDecimal(
      {required String decimalSeparator,
      required String thousandsSeparator,
      required String leftSymbol,
      required String rightSymbol,
      required String value,
      int? maxLength}) {
    value = value.substring(0, maxLength);

    if (maxLength != null && value.length > maxLength) {
      value = value.substring(0, maxLength);
    }

    while (value.length < 3) {
      value = '0$value';
    }

    final String left = value.substring(0, value.length - 2);
    final String right = value.substring(value.length - 2);

    int index = left.length;
    String maskedLeft = '';

    while (index > 3) {
      maskedLeft = '.${left.substring(index - 3, index)}$maskedLeft';
      index = index - 3;
    }

    maskedLeft = left.substring(0, index) + maskedLeft;
    value = '$maskedLeft$decimalSeparator$right';
    value = '$leftSymbol$value$rightSymbol';

    return value;
  }
}

class MoneyFormatter extends TextInputFormatter {
  final String decimalSeparator;
  final String thousandsSeparator;
  final String leftSymbol;
  final String rightSymbol;

  MoneyFormatter({
    this.decimalSeparator = ',',
    this.thousandsSeparator = '.',
    this.leftSymbol = r'R$ ',
    this.rightSymbol = '',
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final String value = UtilFormatter.formatDecimal(
        decimalSeparator: decimalSeparator,
        thousandsSeparator: thousandsSeparator,
        leftSymbol: leftSymbol,
        rightSymbol: rightSymbol,
        value: newValue.text);

    return TextEditingValue(
      text: value,
      selection: TextSelection(
        baseOffset: value.length,
        extentOffset: value.length
      )
    );
  }
}
