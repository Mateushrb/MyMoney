// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback action;
  final BuildContext? context;
  final String label;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;
  final double? height;

  const AppButton(
      {super.key,
      required this.action,
      this.context,
      required this.label,
      this.paddingTop,
      this.paddingBottom,
      this.paddingLeft,
      this.paddingRight,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop ?? 0,
        bottom: paddingBottom ?? 0,
        left: paddingLeft ?? 0,
        right: paddingRight ?? 0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
            onPressed: action,
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                backgroundColor: Colors.green,
                foregroundColor: Colors.green,
                surfaceTintColor: Colors.green,
                padding: EdgeInsets.all(12)),
            child: Text(
              label,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: const TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
