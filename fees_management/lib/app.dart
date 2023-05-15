
import 'package:flutter/material.dart';

import 'view/dashboard.dart';
import 'view/login.dart';
import 'view/signup.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signUpRoute',
      routes: {
        '/signUpRoute': (context) => const SignUpView(),
        '/signInRoute': (context) => const SignInView(),
        '/dashboardRoute': (context) => const DashboardView(),
      },
    );
  }
}
