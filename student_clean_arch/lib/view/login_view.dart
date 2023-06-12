import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const SizedBox(
              height: 120,
            ),
          const Text("Login page",
          style: TextStyle(
            fontSize: 30
          ),),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: 'Enter  username',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: 'Enter password',
              border: OutlineInputBorder(),
            ),
          ),
          
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: double.infinity, height: 40),
                  child:  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, '/batch');
                    }, child: const Text("login"))
                  
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: double.infinity, height: 40),
                  child:  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        )),
                    onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  }, child: const Text("Signup"))
                  
          ),
        ],
      ),
    ));
  }
}
