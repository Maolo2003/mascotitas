import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/form_text_field.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_button_form.dart';
import '../../../config/themes/theme.dart';

class RegisterView extends StatelessWidget {

  static const String name = 'register_view';

  const RegisterView({super.key});

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
                colorFilter:  ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn
                ),

              ),

                Text("Register",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 20,),
                const MyFormTextField(
                  labelText: 'Name',
                  hintText: 'Enter your name...',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                ),
                const SizedBox(height: 20,),
                const MyFormTextField(
                  labelText: 'Last Name',
                  hintText: 'Enter your last name...',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                ),
                const SizedBox(height: 20,),
                const MyFormTextField(
                  labelText: 'Username',
                  hintText: 'Enter your username...',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                ),
                const SizedBox(height: 20,),
                const MyFormTextField(
                  labelText: 'Email',
                  hintText: 'Enter your email address...',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                ),
                const SizedBox(height: 20,),
                const MyFormTextField(
                  labelText: 'Password',
                  hintText: 'Enter your password...',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: true,
                ),
                const SizedBox(height: 20,),
                const MyFormTextField(
                  labelText: ' Confirm password',
                  hintText: 'Enter your password confirmation...',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon: true,
                ),
                const SizedBox(height: 20,),
                MyButtonForm(
                  text: 'Register',
                  onTab: (){},
                )
              ],
            ),
          ),
        )
    ),
    );
  }
}

