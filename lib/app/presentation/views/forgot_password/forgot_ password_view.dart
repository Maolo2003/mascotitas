import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mascotitas/app/presentation/views/login/widgets/login_divider.dart';
import '../register/register_view.dart';
import 'package:mascotitas/app/presentation/widgets/links_common_widgets.dart';
export'package:flutter/gestures.dart';
export 'package:go_router/go_router.dart';

class ForgotPasswordView extends StatelessWidget {
  static const String name = 'login_view';
  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();

  ForgotPasswordView({super.key});

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
                  Text('Password recovery',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  //Tex field
                  FormTextField(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _emailAddress,
                  ),
                  const SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>   ForgotPasswordView()
                              ),
                            );
                          },
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

                    text: 'Send',
                    onTab: (){
                      print('Email Address: ${_emailAddress.text}');
                      print('Password: ${_visiblePassword.text}');
                    },
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
                                  builder: (context) =>  RegisterView()
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
