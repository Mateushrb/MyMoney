import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_money/src/router/app_router.dart';
import 'package:my_money/src/shared/colors/app_colors.dart';
import 'package:my_money/src/shared/components/app_logo_title.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  void redirect(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(AppRouter.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    redirect(context);
    return Scaffold(
      backgroundColor: AppColors.initialPageBackground,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            AppLogoTitle(title: 'My Money'),
          ],
        ),
      )),
    );
  }
}
