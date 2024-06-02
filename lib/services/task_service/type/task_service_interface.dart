import 'package:kodiks_case/models/task_model/task_model.dart';
import 'package:kodiks_case/repositories/task_repository/type/task_repository_interface.dart';

abstract class ITaskService {
  abstract final ITaskRepository repository;

  Future<List<TaskModel>> getTasks();
  Future<void> addTask({required String url, required TaskModel value});
  Future<void> deleteTask({required TaskModel data});
}