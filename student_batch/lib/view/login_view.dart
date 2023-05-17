import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("login"),

      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children:  [
            TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Enter student id',                       
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                   ),
                ), 
                const SizedBox(height: 10),
                TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Enter password',                       
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                   ),
                ), 


                const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                 
                  Navigator.pushNamed(context, '/dashboardRoute');
                },
                child: const Text("login"),
                 
              ) ,
          ],
        ),
      ),

    );
  }
}