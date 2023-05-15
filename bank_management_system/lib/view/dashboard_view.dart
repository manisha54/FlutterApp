
import 'package:flutter/material.dart';

import '../common/custom_textfield.dart';
import '../common/snackbar.dart';
import '../model/user.dart';
import '../util/gloabal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UserModel loggedInUser;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void didChangeDependencies() {
    loggedInUser = ModalRoute.of(context)!.settings.arguments as UserModel;
    super.didChangeDependencies();
  }

  void _sendMondey(String reciversphone, String password, double amount) {
    // check if recivers phone is valid
    try {
      final reciver = users.firstWhere(
        (element) => element.phone == reciversphone,
      );
      // check if password is valid
      if (loggedInUser.password != password) {
        showSnackbar(context, 'Password is invalid');
        return;
      }
      // check if amount is valid
      if (loggedInUser.balance < amount) {
        showSnackbar(context, 'Insufficient balance');
        return;
      }
      // send money if everything is ok
      loggedInUser.balance -= amount;
      reciver.balance += amount;
      setState(() {});
    } catch (e) {
      showSnackbar(context, 'Recivers phone is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${loggedInUser.fname} ${loggedInUser.lname}'),
        actions: [
          Center(
            child: Text(
              'balance: ${loggedInUser.balance}',
              style: const TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CTextFormFiled(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    hintText: 'Recivers Phone Number',
                    labelText: 'Recivers Phone Number',
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                  ),
                  CTextFormFiled(
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    hintText: 'Enter Amount',
                    labelText: 'Enter Amount',
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Amount is required';
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
                        _sendMondey(
                          _phoneController.text,
                          _passwordController.text,
                          double.parse(_amountController.text),
                        );
                      }
                    },
                    child: const Text(
                      'send',
                      style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30
                      ),
                      ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
