//Este archivo se encarga de manejar las rutas de la aplicación
//Se debe importar el archivo de la vista que se desea mostrar
//Se debe agregar la ruta en el Map de rutas

import 'package:go_router/go_router.dart';

//Archivo que contiene los links de las vistas
import 'package:sekerme_ecommerce/app/presentation/views/views_links.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../presentation/views/appointments/appointment_view.dart';
import '../../presentation/views/bills/bills_view.dart';
import '../../presentation/views/clients/clients_view.dart';
import '../../presentation/views/forgot_password/forgot_ password_view.dart';
import '../../presentation/views/orders/orders_view.dart';
import '../../presentation/views/pets/pets_views.dart';
import '../../presentation/views/services/services_view.dart';


final appRouter = GoRouter(
  //La ruta inicial de la aplicación
  initialLocation: '/',
  // rutas de la aplicación
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
          if(Supabase.instance.client.auth.currentUser != null){
            return const HomeView();
          } else {
            return LoginView();
          }
        },
    ),
    GoRoute(
      path: '/home',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/register',
      name: RegisterView.name,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: '/login',
      name: LoginView.name,
      builder: (context, state) => LoginView(),
    ),
    GoRoute(
      path: '/forgot_password',
      name: ForgotPasswordView.name,
      builder: (context, state) => ForgotPasswordView(),
    ),
    GoRoute(
      path: '/appointments',
      name: AppointmentsView.name,
      builder: (context,state) => AppointmentsView(),
    ),
    GoRoute(
      path: '/bills',
      name: BillsView.name,
      builder: (context,state) => BillsView(),
    ),
    GoRoute(
    path: '/clients',
    name: ClientsView.name,
    builder: (context, state) => ClientsView(),
    ),
    GoRoute(
      path: '/orders',
      name: OrdersView.name,
      builder: (context, state) => OrdersView(),
    ),
    GoRoute(
      path: '/pets',
      name: PetsView.name,
      builder: (context, state) => PetsView(),
    ),
    GoRoute(
      path: '/services',
      name: ServicesView.name,
      builder: (context, state) => ServicesView(),
    ),
  ],

);


