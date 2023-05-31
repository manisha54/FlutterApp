import 'package:flutter/material.dart';
import 'package:week6_lab1/view/add_user_view.dart';

import 'view/display_user_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/add user',
      routes: {
        '/add user' :(context) => const AddUserView(),
        '/displayUser' :(context) => const DisplayUserView()
      },

    );
  }
}