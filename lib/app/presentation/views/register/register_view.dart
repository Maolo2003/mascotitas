import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mascotitas/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:mascotitas/app/presentation/views/login/login_view.dart';
import 'package:mascotitas/app/presentation/views/login/widgets/login_divider.dart';
import 'package:mascotitas/app/presentation/views/register/widgets/my_check_box.dart';
import 'package:mascotitas/app/presentation/widgets/links_common_widgets.dart';

import '../../../config/security/encript.dart';
export 'package:flutter/gestures.dart';
export 'package:go_router/go_router.dart';

class RegisterView extends StatefulWidget {
  static const String name = 'register_view';

  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _emailAddress = TextEditingController();
  final _name = TextEditingController();
  final _visiblePassword = TextEditingController();
  final _dateb = TextEditingController();
  final _confirmPassword = TextEditingController();
  bool _checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Logo
              SvgPicture.asset(
                'assets/images/MyMarca.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
                alignment: Alignment.topCenter,
                width: 180,
              ),
              //Text
              Text(
                'Register',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FormTextField(
                labelText: 'Name',
                hintText: 'Name',
                textInputType: TextInputType.text,
                obscureText: false,
                suffixIcon: false,
                controller: _name,
              ),
              const SizedBox(
                height: 20,
              ),
              FormTextField(
                labelText: 'Date of birth',
                hintText: 'Date of birth',
                textInputType: TextInputType.text,
                obscureText: false,
                suffixIcon: false,
                controller: _dateb,
              ),
              const SizedBox(
                height: 20,
              ),
              //Tex field
              FormTextField(
                labelText: 'Email',
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress,
                obscureText: false,
                suffixIcon: false,
                controller: _emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              FormTextField(
                labelText: 'Password',
                hintText: 'Password',
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                suffixIcon: true,
                controller: _visiblePassword,
              ),
              const SizedBox(
                height: 20,
              ),
              FormTextField(
                labelText: 'Password',
                hintText: 'Password',
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                suffixIcon: true,
                controller: _confirmPassword,
              ),
              MyCheckBox(
                value: _checkBox,
                onChanged: (bool? value) {
                  setState(() {
                    _checkBox = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordView()),
                        );
                      },
                      child: Text(
                        '¿Forgot your Password?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Button
              ButtonForm(
                text: 'Register',
                onTab: () {
                  {
                    if (_checkBox == false) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text(
                            'You must accept the terms and conditions'),
                        backgroundColor: Theme.of(context).colorScheme.error,
                        duration: const Duration(seconds: 2),
                      ));
                    } else {

                      print(encript(_visiblePassword.text));
                      if (_visiblePassword.text == _confirmPassword.text) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: const Text('You are registered'),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          duration: const Duration(seconds: 2),
                        ));
                      }
                    }
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              //Divider
              const LoginDivider(),
              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MySocialButton(
                    onTap: () {},
                    imagepath: 'assets/icons/facebook.png',
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  MySocialButton(
                    onTap: () {},
                    imagepath: 'assets/icons/twitter.png',
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  MySocialButton(
                    onTap: () {},
                    imagepath: 'assets/icons/google.png',
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              //Create account
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'have an account?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginView()),
                        );
                      },
                      child: Text(
                        'Sing up',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Form
              //Button
              //TextButton
            ],
          ),
        ),
      )),
    );
  }
}
