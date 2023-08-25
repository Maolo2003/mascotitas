import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/links_common_widgets.dart';
import '../../../config/themes/theme.dart';

class PetsView extends StatelessWidget {

  static const String name = 'register_view';
  final _emailAddress = TextEditingController();
  final _name = TextEditingController();
  final _lastName = TextEditingController();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  PetsView({super.key});

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

                  Text("Pets",
                    style: TextStyle(
                      fontSize: 20,
                      height: 2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Name',
                    hintText: "Enter the pet's name...",
                    textInputType: TextInputType.text,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _name,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Species',
                    hintText: "Enter the pet's species...",
                    textInputType: TextInputType.text,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _lastName,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Breed',
                    hintText: "Enter the pet's breed...",
                    textInputType: TextInputType.text,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _username,

                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Birthdate',
                    hintText: "Enter the pet's birthdate...",
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _emailAddress,
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