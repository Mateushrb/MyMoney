import 'package:flutter/material.dart';

class AppCheckBox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final Color? checkColor;
  final Color? activeColor;
  final BorderSide? side;

  const AppCheckBox({
    required this.value,
    required this.onChanged,
    this.checkColor,
    this.activeColor,
    this.side,
    Key? key,
  }) : super(key: key);

  @override
  _AppCheckBoxState createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.value,
      onChanged: widget.onChanged,
      checkColor: widget.checkColor,
      activeColor: widget.activeColor,
      side: widget.side,
    );
  }
}
