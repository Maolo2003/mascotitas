import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sekerme_ecommerce/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:sekerme_ecommerce/app/presentation/views/login/widgets/login_divider.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/links_common_widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../main.dart';
import '../../../config/themes/theme.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../home/home_view.dart';
import '../register/register_view.dart';

class LoginView extends StatefulWidget {

  static const String name = 'login_view';

  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  bool _isLoading = false;
  bool _redirecting = false;
  final _emailAddress = TextEditingController();

  final _visiblePassword = TextEditingController();

  late final StreamSubscription<AuthState> _authStateSubscription;


  Future<void> _signIn() async {
    try {
      setState(() {
        _isLoading = true;
      });
      await supabase.auth.signInWithOtp(
        email: _emailAddress.text.trim(),
        emailRedirectTo:
        kIsWeb ? null : 'io.supabase.flutterquickstart://login-callback/',
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Check your email for a login link!')),
        );
        _emailAddress.clear();
      }
    } on AuthException catch (error) {
      SnackBar(
        content: Text(error.message),
        backgroundColor: Theme.of(context).colorScheme.error,
      );
    } catch (error) {
      SnackBar(
        content: const Text('Unexpected error occurred'),
        backgroundColor: Theme.of(context).colorScheme.error,
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    _authStateSubscription = supabase.auth.onAuthStateChange.listen((data) {
      if (_redirecting) return;
      final session = data.session;
      if (session != null) {
        _redirecting = true;
        Navigator.of(context).pushReplacementNamed('/account');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _authStateSubscription.cancel();
    _emailAddress.dispose();
    super.dispose();
  }

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

                Text("Login",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20,
                  height: 2,
                ),
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
                  controller: _visiblePassword,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ForgotPasswordView())
                              );
                            },
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
                  onTab: (){
                    _isLoading ? null : _signIn;
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeView()));
                  },
                ),
                const SizedBox(height: 20,),
                const LoginDivider(),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySocialButtons(
                      onTap: (){},
                      imagePath: 'assets/icons/facebook.png',
                    ),
                    const SizedBox(width: 20,),
                    MySocialButtons(
                      onTap: (){},
                      imagePath: 'assets/icons/google.png',
                    ),
                    const SizedBox(width: 20,),
                    MySocialButtons(
                      onTap: (){},
                      imagePath: 'assets/icons/twitter.png',
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                          ),
                        ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RegisterView())
                          );
                        },
                        child: Text('Sign up',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary
                        ),)
                      )
                      ],
                    ),
                )
              ],
            ),
          ),
        )
      ),
     );
  }
}
