import 'package:kodiks_case/models/task_model/task_model.dart';
import 'package:kodiks_case/repositories/task_repository/repository/task_repository.dart';
import 'package:kodiks_case/repositories/task_repository/type/task_repository_interface.dart';
import 'package:kodiks_case/services/task_service/type/task_service_interface.dart';

class TaskService implements ITaskService {

  @override
  ITaskRepository get repository => TaskRepository();

  @override
  Future<void> addTask({required String url, required TaskModel value}) async{
    try {
      await repository.addTask(url: url, value: value);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> deleteTask({required TaskModel data}) async {
    try {
      await repository.deleteTask(data: data);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<TaskModel>> getTasks() async{
    try {
      List<TaskModel> tasks = await repository.getTasks();

      return tasks;
    } on Exception catch (_) {
      rethrow;
    }
  }
}