import 'package:flutter/material.dart';

import '../state/batch_state.dart';
import '../state/student_state.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  void initState() {
    super.initState();
    print('Lenght of students: ${StudentState.students.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dashboard"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: BatchState.batches.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/studentDetailRoute',
                    arguments: BatchState.batches[index]);
              },
              child: Container(
                alignment: Alignment.center,
                color: Colors.pink,
                child: Text(BatchState.batches[index]),
              ),
            );
          }),
    );
  }
}
