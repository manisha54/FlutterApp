import 'package:hive/hive.dart';
import 'package:student_clean_arch/config/constants/hive_table_constant.dart';
import 'package:student_clean_arch/feature/course/domain/entity/course_entity.dart';
import 'package:uuid/uuid.dart';

part 'course_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.courseTableId)
class CourseHiveModel {
  @HiveField(0)
  final String? courseId;

  @HiveField(1)
  final String? courseName;

  //empty constructor
  CourseHiveModel.empty() : this(courseId: '', courseName: '');

  CourseHiveModel({
    String? courseId,
    required this.courseName,
  }) : courseId = courseId ?? const Uuid().v4();

  //convert hive object to entity

  CourseEntity toEntity() => CourseEntity(
        courseId: courseId,
        courseName: courseName!,
      );

//convert Entity to hive object
  CourseHiveModel toHiveModel(CourseEntity entity) => CourseHiveModel(
        courseName: courseName,
      );

  List<CourseHiveModel> toHiveModelList(List<CourseEntity> entities) =>
      entities.map((entity) => toHiveModel(entity)).toList();

  //convert Hive3 List to Entity list
  List<CourseEntity> toEntityList(List<CourseHiveModel> models) =>
      models.map((model) => model.toEntity()).toList();
}
