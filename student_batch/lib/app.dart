import 'package:flutter/material.dart';
import 'package:student_batch/view/dashboard_view.dart';
import 'package:student_batch/view/login_view.dart';
import 'package:student_batch/view/register_view.dart';
import 'package:student_batch/view/student_details_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/registerRoute',
      routes: {
      '/registerRoute': (context) => const RegisterView(),
      '/loginRoute': (context) => const SignInView(),
      '/dashboardRoute': (context) => const DashboardView(),
      '/studentDetailRoute': (context) => const StudentDetailView(),
      },
     
    );
  }
}