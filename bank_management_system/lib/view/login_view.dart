
import 'package:flutter/material.dart';

import '../common/custom_textfield.dart';
import '../common/snackbar.dart';
import '../util/gloabal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _userCheck(String phone, String password) {
    for (var i = 0; i < users.length; i++) {
      if (users[i].phone == phone && users[i].password == password) {
        showSnackbar(context, 'Logged in successfully');
        Navigator.pushNamed(context, '/home', arguments: users[i]);
      } else {
        showSnackbar(context, 'Invalid phone or password');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
            child: const Text("Sign up"),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CTextFormFiled(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    hintText: 'Phone Number',
                    labelText: 'Phone Number',
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                  ),
                  CTextFormFiled(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: 'Password',
                    labelText: 'Password',
                    obscureText: true,
                    
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      
                      if (_formKey.currentState!.validate()) {
                        _userCheck(
                          _phoneController.text,
                          _passwordController.text,
                        );
                      }
                    },
                    child: const Text('Sign Up',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30
                      ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
