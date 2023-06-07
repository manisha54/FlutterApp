import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student/modal/student.dart';
import 'package:student/view_model/student_viewmodel.dart';

class AddStudent extends ConsumerStatefulWidget {
  const AddStudent({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddStudentState();
}

class _AddStudentState extends ConsumerState<AddStudent> {
  final firstNameController = TextEditingController();
  final secondNameController = TextEditingController();
  final dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var studentState = ref.watch(studentViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("student"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: firstNameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Fname"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: secondNameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Lname"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: dobController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "DOB"),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Student student = Student(
                    fname: firstNameController.text.trim(),
                    lname: secondNameController.text.trim(),
                    dob: dobController.text.trim());

                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("student add sucessfully"),
                  backgroundColor: Colors.green,
                ));

                ref.read(studentViewModelProvider.notifier).addStudent(student);
              },
              child: const Text("Add"),
            ),
            studentState.students.isNotEmpty
                ? ListView.builder(
                  itemCount: studentState.students.length,
                  itemBuilder: (context,index){
                    return  ListTile(
                      title: Text(studentState.students[index].fname!),
                      subtitle: Text(studentState.students[index].dob!),

                    );
                  }
                )
                : const Text("data chaina")

            //if condition
          ],
        ),
      ),
    );
  }
}
