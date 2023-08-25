import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/views/register/widgets/my_check_box.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/links_common_widgets.dart';
import '../../../config/security/encript.dart';
import '../../../config/themes/theme.dart';

class RegisterView extends StatefulWidget {

  static const String name = 'register_view';

  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  final _emailAddress = TextEditingController();
  final _name = TextEditingController();
  final _lastName = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
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
              children: [SvgPicture.asset('assets/images/logo_mascotitas.svg',
                alignment: Alignment.topCenter,
                height: 100,
                width: 100,
                colorFilter:  ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn
                ),

              ),

                Text("Register",
                  style: TextStyle(
                    fontSize: 20,
                    height: 2,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 20,),
                MyFormTextField(
                  labelText: 'Name',
                  hintText: 'Enter your name...',
                  textInputType: TextInputType.text,
                  obscureText: false,
                  suffixIcon: false,
                  controller: _name,
                ),
                const SizedBox(height: 20,),
                MyFormTextField(
                  labelText: 'Last Name',
                  hintText: 'Enter your last name...',
                  textInputType: TextInputType.text,
                  obscureText: false,
                  suffixIcon: false,
                  controller: _lastName,
                ),
                const SizedBox(height: 20,),
                MyFormTextField(
                  labelText: 'Username',
                  hintText: 'Enter your username...',
                  textInputType: TextInputType.text,
                  obscureText: false,
                  suffixIcon: false,
                  controller: _username,

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
                  controller: _password,

                ),
                const SizedBox(height: 20,),
                MyFormTextField(
                  labelText: ' Confirm password',
                  hintText: 'Enter your password confirmation...',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: true,
                  controller: _confirmPassword,
                ),
                const SizedBox(height: 20,),
                MyCheckBox(
                    onChanged: (bool? value) {
                      setState(() {
                        _checkBox = value!;
                      });
                    },
                    value: _checkBox
                ),
                const SizedBox(height: 20,),
                MyButtonForm(
                  text: 'Register',
                  onTab: (){
                    if(_checkBox==false){
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('You must accept the terms and conditions'),
                            backgroundColor: Theme.of(context).colorScheme.error,
                            duration: const Duration(seconds: 2),

                          )
                      );
                    }else{
                      print(encript(_password.text));
                      print(encript(_confirmPassword.text));
                      if(_password.text==_confirmPassword.text){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text('You are registered'),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              duration: const Duration(seconds: 2),

                            )
                        );
                      }
                    }
                  },
                )
              ],
            ),
          ),
        )
    ),
    );
  }
}

