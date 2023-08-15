import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mascoticas_carlos/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:mascoticas_carlos/app/presentation/views/login/widgets/login_divider.dart';
import 'package:mascoticas_carlos/app/presentation/widgets/links_common_widgets.dart';
import '../../../config/themes/theme.dart';
import '../register/register_view.dart';


class LoginView extends StatelessWidget {

  static const String name = 'login_view';
  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();


  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/logo_mascotitas.svg',
                  alignment: Alignment.topCenter,
                  height: 100,
                  width: 100,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn
                ),
              ),

                Text("Login",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20,
                  height: 2,
                ),
                ),
                const SizedBox(height: 20,),
                MyFormTextField(
                  labelText: 'Email',
                  hintText: 'Enter your email address...',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                  controller: _emailAddress,
                ),
                const SizedBox(height: 20,),
                MyFormTextField(
                  labelText: 'Password',
                  hintText: 'Enter your password...',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: true,
                  controller: _visiblePassword,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ForgotPasswordView())
                              );
                            },
                            child: Text('Did you forget your password?',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                        )
                      ],
                    ),
                ),
                const SizedBox(height: 20,),
                MyButtonForm(
                  text: 'Login',
                  onTab: (){
                    print('Email address: ${_emailAddress.text}');
                    print('Email address: ${_visiblePassword.text}');
                  },
                ),
                const SizedBox(height: 20,),
                const LoginDivider(),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySocialButtons(
                      onTap: (){},
                      imagePath: 'assets/icons/facebook.png',
                    ),
                    const SizedBox(width: 20,),
                    MySocialButtons(
                      onTap: (){},
                      imagePath: 'assets/icons/google.png',
                    ),
                    const SizedBox(width: 20,),
                    MySocialButtons(
                      onTap: (){},
                      imagePath: 'assets/icons/twitter.png',
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegisterView())
                          );
                        },
                        child: Text('Sign up',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary
                        ),)
                      )
                      ],
                    ),
                )
              ],
            ),
          ),
        )
      ),
     );
  }
}
