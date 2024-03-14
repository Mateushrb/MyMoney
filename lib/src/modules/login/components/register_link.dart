import 'package:flutter/material.dart';
import 'package:my_money/src/shared/colors/app_colors.dart';

class RegisterLink extends StatelessWidget {
  const RegisterLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.post_add, color: AppColors.logo),
        ),
        Text(
          'Faça seu cadastro no ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'My Money',
          style: TextStyle(
            color: AppColors.logo,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
