import 'package:flutter/material.dart';

import '../model/display_name.dart';


class DisplayName extends StatefulWidget {
  const DisplayName({super.key});

  @override
  State<DisplayName> createState() => _DisplayNameState();
}

class _DisplayNameState extends State<DisplayName> {
  int counter = 0;
  String name = "display name";
  late DisplayNameModel obj;

  void changeName(){
    obj = DisplayNameModel();
    setState(() {
       name = obj.displayName(counter++);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text(" Display Name"),
        centerTitle: true,
        elevation: 0,
      ),
      body: 
      Center(
        child: SizedBox(
          width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                changeName();
              },
              child: Text('Click Me!  ($name)'),
            ),
        ),
      )
    );
  }
}