import 'package:flutter/material.dart';

import 'util/routers.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: '/signup',
      routes: allRouters,
    );
  }
}