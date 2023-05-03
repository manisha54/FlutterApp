import 'package:flutter/material.dart';


class EditStudentDetailview extends StatefulWidget {
  const EditStudentDetailview({super.key});

  @override
  State<EditStudentDetailview> createState() => _EditStudentDetailviewState();
}

class _EditStudentDetailviewState extends State<EditStudentDetailview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Details"),
        centerTitle: true,
        elevation: 0,
      ),

    );
  }
}