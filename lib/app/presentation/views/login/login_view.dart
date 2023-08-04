import 'package:go_router/go_router.dart';
import 'package:mascotitas/app/presentation/views/login/widgets/login_divider.dart';
import 'package:mascotitas/app/presentation/widgets/my_button_form.dart';
import 'package:mascotitas/app/presentation/widgets/form_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mascotitas/app/presentation/widgets/my_social_button.dart';

import '../register/register_view.dart';


class LoginView extends StatelessWidget {

  static const String name = 'login_view';

  const LoginView({super.key});

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
                  //Logo
                  SvgPicture.asset('assets/images/MyMarca.svg',
                    colorFilter:  ColorFilter.mode(
                        Theme.of(context).colorScheme.primary, BlendMode.srcIn
                    ),
                    alignment: Alignment.topCenter,
                    width: 180,
                  ),
                  //Text
                  Text('login',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  //Tex field
                  const FormTextField(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    textInputType: TextInputType.emailAddress,
                    obscureText: true,
                    suffixIcon: true,
                  ),
                  const SizedBox(height: 20,),
                  const FormTextField(
                    labelText: 'Password',
                    hintText: 'Password',
                    textInputType: TextInputType.emailAddress,
                    obscureText: true,
                    suffixIcon: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text('¿Forgot your Password?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  //Button
                  ButtonForm(

                      text: 'login',
                      onTab: (){}
                  ),
                  const SizedBox(height: 20,),
                  //Divider
                  const LoginDivider(),
                  const SizedBox(height: 20,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MySocialButton(
                        onTap: (){},
                        imagepath: 'assets/icons/facebook.png',


                      ),
                      const SizedBox(width: 2,),
                      MySocialButton(
                        onTap: (){},
                        imagepath: 'assets/icons/twitter.png',


                      ),
                      const SizedBox(width: 2,),
                      MySocialButton(
                        onTap: (){},
                        imagepath: 'assets/icons/google.png',


                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),
                  //Create account
                   Padding(
                      padding:const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('Don\'t have an account?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          TextButton(
                              onPressed:(){
                                Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context) => const RegisterView()
                                  ),
                                );
                              },
                              child: Text('Sing up',
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
          )
      ),
    );
  }
}

