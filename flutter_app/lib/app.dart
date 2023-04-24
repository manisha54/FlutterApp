import 'package:flutter/material.dart';
import 'package:flutter_app/view/area_circle.dart';
import 'package:flutter_app/view/arithmetic_view.dart';
import 'package:flutter_app/view/dashboard.dart';
import 'package:flutter_app/view/display_name_view.dart';
import 'package:flutter_app/view/simple_interest.dart';

//import 'view/simple_interest.dart';




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const DashboardView(),
        '/aithmeticRoute' : (context) => const ArithmeticView(),
        '/SimpleInterest' : (context) => const SimpleInterest(),
        '/AreaOfCircle' : (context) => const CircleView(),
        '/displayname' : (context) => const DisplayName(),
        
      },
      
    );  
  }
}