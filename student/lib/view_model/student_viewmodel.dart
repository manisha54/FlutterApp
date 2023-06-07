import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student/modal/student.dart';
import 'package:student/state/student_state.dart';

final studentViewModelProvider = 
  StateNotifierProvider<StudentViewModel, StudentState>(
    (ref) => StudentViewModel());

class StudentViewModel extends StateNotifier<StudentState> {
  StudentViewModel() : super(StudentState.initial());

  void addStudent(Student student) {
    //progress bar start
    state = state.copyWith(isLoading: true);

    state.students.add(student);

    //progress bar stop
    state.copyWith(isLoading: false);
  }
}
