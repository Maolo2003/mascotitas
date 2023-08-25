import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/links_common_widgets.dart';
import '../../../config/themes/theme.dart';

class ClientsView extends StatelessWidget {

  static const String name = 'clients_view';
  final _emailAddress = TextEditingController();
  final _name = TextEditingController();
  final _lastName = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  ClientsView({super.key});

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

                  Text("Clients",
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
                    labelText: 'Confirm password',
                    hintText: 'Enter your password confirmation...',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _confirmPassword,

                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Send',
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