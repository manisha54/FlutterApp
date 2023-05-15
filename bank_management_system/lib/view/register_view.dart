
import 'package:flutter/material.dart';

import '../common/custom_textfield.dart';
import '../common/snackbar.dart';
import '../model/user.dart';
import '../util/gloabal.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text("Login"),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // FName
                  CTextFormFiled(
                    controller: _fnameController,
                    keyboardType: TextInputType.name,
                    hintText: 'First Name',
                    labelText: 'First Name',
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'First name is required';
                      } else if (!RegExp(r"^[a-zA-Z0-9](?:[a-zA-Z0-9\s]*)$")
                          .hasMatch(p0)) {
                        return 'First name must be alphanumeric';
                      }
                      return null;
                    },
                  ),
                  // LName
                  CTextFormFiled(
                    controller: _lnameController,
                    keyboardType: TextInputType.name,
                    hintText: 'Last Name',
                    labelText: 'Last Name',
                   
                  ),
                  // Address
                  CTextFormFiled(
                    controller: _addressController,
                    keyboardType: TextInputType.name,
                    hintText: 'Address',
                    labelText: 'Address',
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Address is required';
                      }
                      return null;
                    },
                  ),
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
                  CTextFormFiled(
                    controller: _confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: 'Confirm Password',
                    labelText: 'Confirm Password',
                    obscureText: true,
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Confirm Password is required';
                      }
                      if (p0 != _passwordController.text) {
                        return 'Password does not match';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final newUser = UserModel(
                          accountNo: (users.length) + 1,
                          fname: _fnameController.text,
                          lname: _lnameController.text,
                          phone: _phoneController.text,
                          password: _passwordController.text,
                          address: _addressController.text,
                          balance: 1000.00,
                        );
                        users.add(newUser);
                        showSnackbar(context, "Account Created Successfully");
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/',
                          (route) => false,
                        );
                      }
                    },
                    child: const Text('Sign Up'),
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
