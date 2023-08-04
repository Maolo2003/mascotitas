import 'package:flutter/material.dart';

import 'config/themes/theme.dart';
import 'presentation/views/views_links.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedThemeColor: 5).theme(),

    );
  }
}
