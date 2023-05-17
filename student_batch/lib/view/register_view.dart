import 'package:flutter/material.dart';

import '../model/student.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  List<String> batch = [
    "30-A",
    "30B",
    "30C",
    "31A",
  ];

  final _studentIdController = TextEditingController();
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  final _ageController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confrimPasswordController = TextEditingController();

  int? age;

 final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _studentIdController.dispose();
    _fnameController.dispose();
    _ageController.dispose();
    _lnameController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confrimPasswordController.dispose();
    super.dispose();
  }


   void _submit() {
    if (_formKey.currentState!.validate()) {
      Student students = Student(
          fname: _fnameController.text.trim(),
          lname: _lnameController.text.trim(),
          age: int.parse(_ageController.text.trim()),
          username: _usernameController.text.trim(),
          password: _passwordController.text.trim());
          
      // studentList.add(student);

    //  Navigator.pushNamed(context, '/signInRoute',);
    }
  }


  String? selectedBatch;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("signup"),

      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              TextFormField(
                controller: _studentIdController,
                decoration: InputDecoration(
                  labelText: 'Enter student id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _fnameController,
                decoration: InputDecoration(
                  labelText: 'Enter student first name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _lnameController,
                decoration: InputDecoration(
                  labelText: 'Enter student last name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: 'Enter student age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Enter username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Enter password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _confrimPasswordController,
                decoration: InputDecoration(
                  labelText: 'Enter confirsm password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Batch',
                  border: OutlineInputBorder(),
                ),
                items: batch
                    .map(
                      (batch) => DropdownMenuItem(
                        value: batch,
                        child: Text(batch),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBatch = value;
                  });
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                     _submit();
                },
                child: const Text("Register"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginRoute');
                },
                child: const Text(
                  "Already have an account? SIGN IN",
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
