import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/form_text_field.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_button_form.dart';
import '../../../config/themes/theme.dart';


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
              children: [SvgPicture.asset('assets/images/logo_mascotitas.svg',
                colorFilter:  ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn
                ),

              ),

                Text("Login",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
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
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){},
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
