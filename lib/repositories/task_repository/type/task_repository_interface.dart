import 'package:kodiks_case/core/client/type/app_client_interface.dart';
import 'package:kodiks_case/injections/local_database/type/local_database_interface.dart';
import 'package:kodiks_case/models/task_model/task_model.dart';

abstract class ITaskRepository {
  abstract final IAppClient httpClient;
  abstract final ILocalDataBase localDataBase;

  Future<List<TaskModel>> getTasks();
  Future<void> addTask({required String url, required TaskModel value});
  Future<void> deleteTask({required TaskModel data});
}