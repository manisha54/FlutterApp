
import 'package:dartz/dartz.dart';
import 'package:student_clean_arch/feature/auth/domain/entity/student_entity.dart';
import 'package:student_clean_arch/feature/batch/domain/repository/batch_repository.dart';

import '../../../../core/failure/failure.dart';

class BatchLocalRepositoryImpl implements IBatchRepository{
  @override
  Future<Either<Failure, bool>> loginstudent(String username, String password) {
    // TODO: implement loginstudent
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> registerStudent(StudentEntity student) {
    // TODO: implement registerStudent
    throw UnimplementedError();
  }



}