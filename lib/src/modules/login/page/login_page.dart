import 'package:flutter/material.dart';
import 'package:my_money/src/modules/home/page/home_page.dart';
import 'package:my_money/src/modules/login/components/register_link.dart';
import 'package:my_money/src/shared/colors/app_colors.dart';
import 'package:my_money/src/shared/components/app_button.dart';
import 'package:my_money/src/shared/components/app_loading.dart';
import 'package:my_money/src/shared/components/app_logo_title.dart';
import 'package:my_money/src/shared/components/app_checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = true;
  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
    ).then((_) => setState(() {
          isLoading = false;
        }));
  }

  void _onRememberMeChanged(bool? newValue) {
    setState(() {
      rememberMe = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: AppLoading(),
          )
        : Scaffold(
            backgroundColor: Colors.grey[200],
            body: SingleChildScrollView(
              child: SafeArea(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 120,
                      left: 75,
                      right: 75,
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
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            labelText: 'Login',
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        TextFormField(
                          enabled: true,
                          controller: passwordController,
                          textAlign: TextAlign.start,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Senha',
                            prefixIcon: Icon(Icons.lock),
                            ),
                        ),
                        Row(
                          children: [
                            AppCheckBox(
                              value: rememberMe,
                              onChanged: _onRememberMeChanged,
                              checkColor: Colors.white,
                              activeColor: Colors.green[300],
                              side:
                              BorderSide(width: 1, color: Colors.green),
                            ),
                            const Text('Lembrar-me'),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80, bottom: 10),
                          child: AppButton(
                            action: () {
                              // Navega para a home_page.dart quando o botão for pressionado
                            Navigator.push(
                              context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                              );
                            },
                            label: "Login",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const RegisterLink(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
