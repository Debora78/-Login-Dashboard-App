import 'package:flutter/material.dart';

import 'themes/app_theme.dart';

import 'routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp è il contenitore principale dell'app.
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // Rotta iniziale: la home.
      routerConfig: router,
    );
  }
}
