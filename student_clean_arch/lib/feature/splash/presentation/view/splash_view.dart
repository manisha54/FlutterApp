import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(


      body: Text("hfhefhh"),

    );
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushNamed(context, '/login');

    });
    super.initState();
    
  }
}