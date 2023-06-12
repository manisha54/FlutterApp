import 'package:hive/hive.dart';
import 'package:student_clean_arch/config/constants/hive_table_constant.dart';
import 'package:student_clean_arch/feature/batch/domain/entity/batch_entity.dart';
import 'package:uuid/uuid.dart';

part 'batch_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.batchTableId)
class BatchHiveModel {
  @HiveField(0)
  final String? batchId;

  @HiveField(1)
  final String? batchName;

  //empty constructor
  BatchHiveModel.empty() : this(batchId: '', batchName: '');

  BatchHiveModel({
    String? batchId,
    required this.batchName,
  }) : batchId = batchId ?? const Uuid().v4();

//convert hive object to entity

  BatchEntity toEntity() => BatchEntity(
        batchId: batchId,
        batchName: batchName!,
      );

//convert Entity to hive object
  BatchHiveModel toHiveModel(BatchEntity entity) => BatchHiveModel(
        batchName: batchName,
      );

  //convert Hive3 List to Entity list
  List<BatchEntity> toEntityList(List<BatchHiveModel> models) =>
      models.map((model) => model.toEntity()).toList();
}
