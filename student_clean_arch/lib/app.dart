import 'package:flutter/material.dart';
import 'package:student_clean_arch/feature/splash/presentation/view/splash_view.dart';
import 'package:student_clean_arch/view/batch_view.dart';
import 'package:student_clean_arch/view/login_view.dart';
import 'package:student_clean_arch/view/register_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const SplashView(),
        '/login':(context) => const LoginView(),
        '/register':(context) => const RegisterView(),
         '/batch':(context) => const BatchView()
      },

    );
  }
}