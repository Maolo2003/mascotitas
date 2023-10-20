import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/data/models/appointments_model.dart';
import 'package:sekerme_ecommerce/app/presentation/views/bills/bills_view.dart';
import 'package:sekerme_ecommerce/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:sekerme_ecommerce/app/presentation/views/login/widgets/login_divider.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/links_common_widgets.dart';
import '../../../config/themes/theme.dart';
import '../appointments/appointment_view.dart';
import '../orders/orders_view.dart';
import '../pets/pets_views.dart';
import '../products/products_view.dart';
import '../register/register_view.dart';
import '../services/services_view.dart';
import '../users/users_view.dart';


class HomeView extends StatelessWidget {

  static const String name = 'home_view';
  const HomeView({super.key});

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
                  Text("Home",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      height: 2,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Appointments',
                    onTab: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AppointmentsView())
                      );
                    },
                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Bills',
                    onTab: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BillsView())
                      );
                    },
                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Users',
                    onTab: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UsersView())
                      );
                    },
                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Orders',
                    onTab: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OrdersView())
                      );
                    },
                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Pets',
                    onTab: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PetsView())
                      );
                    },
                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Products',
                    onTab: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProductsView())
                      );
                    },
                  ),
                  const SizedBox(height: 20,),
                  MyButtonForm(
                    text: 'Services',
                    onTab: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ServicesView())
                      );
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