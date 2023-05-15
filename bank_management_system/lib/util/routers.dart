
import '../view/dashboard_view.dart';
import '../view/login_view.dart';
import '../view/register_view.dart';

final allRouters = {
  '/': (context) => const LoginPage(),
  '/signup': (context) => const SignupPage(),
  '/home': (context) => const HomePage(),

};
