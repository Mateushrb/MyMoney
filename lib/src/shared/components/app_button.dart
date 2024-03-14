import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback action;
  final BuildContext? context;
  final String label;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRigth;

  final double? height;

  const AppButton({
    Key? key,
    required this.action,
    this.context,
    required this.label,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRigth,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: paddingBottom ?? 0,
        top: paddingTop ?? 0,
        left: paddingLeft ?? 0,
        right: paddingRigth ?? 0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: action,
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: Colors.green[300],
            foregroundColor: Colors.green[300],
            padding: const EdgeInsets.all(12),
            surfaceTintColor: Colors.green[300],
          ),
          child: Text(label,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: const TextStyle(color: Colors.white),
              ),
        ),
      ),
    );
  }
}
