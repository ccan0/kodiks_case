import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 1)
class TaskModel extends HiveObject {
  TaskModel({this.title, this.imageUrl, this.dueDate, this.description});

  @HiveField(0)
  String? title;

  @HiveField(1)
  String? description;

  @HiveField(2)
  String? imageUrl;

  @HiveField(3)
  DateTime? dueDate;
}