// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:app_my_money/src/router/app_router.dart';
import 'package:app_my_money/src/shared/colors/app_colors.dart';
import 'package:app_my_money/src/shared/components/app_logo_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void redirect(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(AppRouter.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    redirect(context);

    return Scaffold(
      backgroundColor: AppColors.homePageBackground,
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
        ),
      ),
    );
  }
}
