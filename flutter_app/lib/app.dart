import 'package:flutter/material.dart';

import 'view/simple_interest.dart';




class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleInterest(),
      
    );  
  }
}