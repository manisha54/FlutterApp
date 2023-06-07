

import 'package:student/modal/student.dart';

class StudentState {
  bool isLoading;
  List<Student> students;

  StudentState({
    required this.isLoading,
    required this.students,
  });


  //initial state

  StudentState.initial() : this (isLoading: false, students: []);

  //copywith
  StudentState copyWith({
    bool? isLoading,
    List<Student>? students,
  }) {
    return StudentState(
        isLoading: isLoading ?? this.isLoading,
        students: students ?? this.students);
  }
}
