import 'package:hive_flutter/adapters.dart';
part 'dataModel.g.dart';

@HiveType(typeId: 1)
class stdModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String age;

  stdModel({
    required this.name,
    required this.age,
    this.id,
  });
}
