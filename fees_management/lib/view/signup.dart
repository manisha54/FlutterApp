
import 'package:flutter/material.dart';

import '../model/student.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  List<Student> studentList = [
    Student(
        fname: 'Manisha',
        lname: 'Tharu',
        age: 25,
        gender: 'Female',
        dueAmount: 2000,
        username: 'manisha',
        password: '12345',
        studentId: 1),
  ];
  // List<Student> studentList = [];

  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  final _studentIdController = TextEditingController();
  final _ageController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confrimPasswordController = TextEditingController();

  int? age;

  SizedBox gap = const SizedBox(height: 20);
  final _formKey = GlobalKey<FormState>();
  String? _groupValue = 'Gender';
  @override
  void dispose() {
    _fnameController.dispose();
    _ageController.dispose();
    _studentIdController.dispose();
    _lnameController.dispose();
    _usernameController.dispose();
    _confrimPasswordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      Student student = Student(
          fname: _fnameController.text.trim(),
          lname: _lnameController.text.trim(),
          age: int.parse(_ageController.text.trim()),
          gender: _groupValue,
          dueAmount: 2000,
          username: _usernameController.text.trim(),
          password: _passwordController.text.trim(),
          studentId: studentList.length);
      studentList.add(student);

      Navigator.pushNamed(context, '/signInRoute', arguments: studentList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Signup'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.blue,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _fnameController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please, enter first name ' : null,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'Enter first name',
                      // hintText: 'E.g John',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )),
                ),
                gap,
                TextFormField(
                  controller: _lnameController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please, enter last name ' : null,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'Enter last name',
                   //   hintText: 'E.g  Cena',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )),
                ),
                gap,
                TextFormField(
                  controller: _ageController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please, enter age ' : null,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'Enter age',
                  //    hintText: 'E.g 34',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )),
                ),
                gap,
                const Text('Select gender'),
                ListTile(
                    title: const Text('Male'),
                    leading: Radio(
                        value: 'male',
                        groupValue: _groupValue,
                        onChanged: (value) {
                          setState(() {
                            _groupValue = value;
                          });
                        })),
                gap,
                ListTile(
                    title: const Text('Female'),
                    leading: Radio(
                        value: 'female',
                        groupValue: _groupValue,
                        onChanged: (value) {
                          setState(() {
                            _groupValue = value;
                          });
                        })),
                gap,
                ListTile(
                    title: const Text('Other'),
                    leading: Radio(
                        value: 'other',
                        groupValue: _groupValue,
                        onChanged: (value) {
                          setState(() {
                            _groupValue = value;
                          });
                        })),
                gap,
                TextFormField(
                  controller: _usernameController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please, enter username  ' : null,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_2),
                      labelText: 'Enter username',
                 //     hintText: 'E.g John',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )),
                ),
                gap,
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please, enter your password ' : null,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      labelText: 'Enter your password ',
                  //    hintText: 'E.g  ***',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )),
                ),
                gap,
                TextFormField(
                  obscureText: true,
                  controller: _confrimPasswordController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please, confrim password ' : null,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      labelText: 'Enter confirm password',
                   //   hintText: 'E.g ***',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )),
                ),
                gap,
                SizedBox(
                  width: double.infinity,
                  height: 55.0,
                  child: ElevatedButton(
                      onPressed: () {
                        _submit();
                      },
                      child: const Text('Sign up')),
                ),
                gap,
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signInRoute', arguments: studentList);
                      ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("registered successfully"),
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.green,
                                behavior: SnackBarBehavior.floating,
                                ),                           
                            );  
                    },
                    child: const Text('Already Have an account ? Sign in',))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
