import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_batch/common/show_snack_bar.dart';
import 'package:student_batch/model/student.dart';
import 'package:student_batch/state/batch_state.dart';
import 'package:student_batch/state/student_state.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _studentIdController = TextEditingController();
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  final _ageController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confrimPasswordController = TextEditingController();

  int? age;
  String? selectedBatch;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    Student student1 = Student(
        studentId: 1234.toString(),
        fname: 'manisha',
        lname: 'tharu',
        age: 22,
        username: 'manisha',
        password: 'manisha',
        batchId: '30-A');

 Student student2 = Student(
        studentId: 123.toString(),
        fname: 'manisha',
        lname: 'tharu',
        age: 22,
        username: 'manisha',
        password: 'manisha',
        batchId: '30-A');

    StudentState.students.add(student1);
    
    StudentState.students.add(student2);
  }

  @override
  void dispose() {
    _studentIdController.dispose();
    _fnameController.dispose();
    _lnameController.dispose();
    _ageController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confrimPasswordController.dispose();
    super.dispose();
  }


    void _clearControllers() {
    _fnameController.clear();
    _lnameController.clear();
    _ageController.clear();
    _usernameController.clear();
    _passwordController.clear();
    _confrimPasswordController.clear();
    selectedBatch = null;
  }

void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_confrimPasswordController.text.trim() !=
          _passwordController.text.trim()) {
        showSnackBar(
            context: context,
            message: 'Password and Confirm password donot match.');

        return;
      }

      Student newStudent = Student(
          studentId: 123.toString(),
          fname: _fnameController.text.trim(),
          lname: _lnameController.text.trim(),
          age: int.parse(_ageController.text.trim()),
          username: _usernameController.text.trim(),
          password: _passwordController.text.trim(),
          batchId: selectedBatch);

      StudentState.students.add(newStudent);
      print('Length of students list : ${StudentState.students.length}');

      showSnackBar(
        context: context,
        message: 'Account has been created successfully.',
        color: Colors.green,
      );
      Navigator.pushNamed(context, '/loginRoute');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("signup"),

      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Form(
            key:_formKey,
            child: Column(
              children: [
                // TextFormField(
                //   controller: _studentIdController,
                //   decoration: InputDecoration(
                //     labelText: 'Enter student id',
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(12.0),
                //     ),
                //   ),
                // ),
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
                  // maxLength: 6,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(2),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
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
                  obscureText: true,
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
                  obscureText: true,
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
                  items: BatchState.batches
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
