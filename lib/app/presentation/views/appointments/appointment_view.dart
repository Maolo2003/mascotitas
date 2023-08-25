import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:sekerme_ecommerce/app/presentation/views/login/widgets/login_divider.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/links_common_widgets.dart';
import '../../../config/themes/theme.dart';
import '../register/register_view.dart';


class AppointmentView extends StatelessWidget {

  static const String name = 'login_view';
  final _emailAddress = TextEditingController();
  final _visiblePassword = TextEditingController();


  AppointmentView({super.key});

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

                  Text("Appointments",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Branch',
                    hintText: 'Enter the branch you prefer...',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _emailAddress,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Service',
                    hintText: 'Enter the service...',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _visiblePassword,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Specialist',
                    hintText: 'Enter the service...',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _visiblePassword,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Date',
                    hintText: 'Enter the date you want the appointment...',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _visiblePassword,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Time',
                    hintText: "Enter the appointment's hour...",
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _visiblePassword,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Pet',
                    hintText: "Enter the pet's name...",
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _visiblePassword,
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