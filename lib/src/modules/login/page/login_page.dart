import 'package:flutter/material.dart';
import 'package:my_money/src/modules/login/components/register_link.dart';
import 'package:my_money/src/router/app_router.dart';
import 'package:my_money/src/shared/colors/app_colors.dart';
import 'package:my_money/src/shared/components/app_button.dart';
import 'package:my_money/src/shared/components/app_loading.dart';
import 'package:my_money/src/shared/components/app_logo_title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
    ).then((_) => setState(() {
          isLoading = false;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: AppLoading(),
          )
        : Scaffold(
            backgroundColor: AppColors.appPageBackground,
            body: SingleChildScrollView(
              child: SafeArea(
                  child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 140,
                    left: 25,
                    right: 25,
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppLogoTitle(
                          title: 'Login My Money',
                          iconSize: 80,
                          titleSize: 20,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: loginController,
                          textAlign: TextAlign.start,
                          autofocus: false,
                          keyboardType: TextInputType.text,
                          decoration:
                              const InputDecoration(label: Text('Login')),
                        ),
                        TextFormField(
                          enabled: true,
                          controller: passwordController,
                          textAlign: TextAlign.start,
                          autofocus: false,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration:
                              const InputDecoration(label: Text('Senha')),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            child: AppButton(action: () {}, label: "Login")),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, AppRouter.register);
                            },
                            child: const RegisterLink()),
                      ]),
                ),
              )),
            ),
          );
  }
}
