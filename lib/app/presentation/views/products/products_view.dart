import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:sekerme_ecommerce/app/presentation/views/login/widgets/login_divider.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/links_common_widgets.dart';
import '../../../config/themes/theme.dart';
import '../register/register_view.dart';


class ProductsView extends StatelessWidget {

  static const String name = 'login_view';
  final _description = TextEditingController();
  final _price = TextEditingController();
  final _expirationDate = TextEditingController();
  final _stock = TextEditingController();

  ProductsView({super.key});

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

                  Text("Products",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Description',
                    hintText: 'Enter the description of the product...',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,
                    controller: _description,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Price',
                    hintText: 'Enter the price of the product per unit...',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _price,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Expiration date',
                    hintText: "Enter the expiration date of the product...",
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _expirationDate,
                  ),
                  const SizedBox(height: 20,),
                  MyFormTextField(
                    labelText: 'Stock',
                    hintText: 'Enter the units in stock...',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                    controller: _stock,
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