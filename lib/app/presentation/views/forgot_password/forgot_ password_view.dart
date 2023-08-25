import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/links_common_widgets.dart';
import '../../widgets/my_social_buttons.dart';
import '../login/widgets/login_divider.dart';
import '../register/register_view.dart';

class ForgotPasswordView extends StatelessWidget {

  static const String name = 'forgot_password_view';
  final _emailAddress = TextEditingController();


  ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
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

                  Text("Remember password",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text('Write down your email to change the password',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  MyFormTextField(
                      labelText: 'Email',
                      hintText: 'Enter your email address...',
                      textInputType: TextInputType.emailAddress,
                      obscureText: false,
                      suffixIcon: false,
                      controller: _emailAddress
                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Send Email',
                    onTab: (){},
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}