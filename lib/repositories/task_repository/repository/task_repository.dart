import 'package:dio/dio.dart';
import 'package:kodiks_case/core/client/client/app_client.dart';
import 'package:kodiks_case/core/client/type/app_client_interface.dart';
import 'package:kodiks_case/injections/local_database/database/local_database.dart';
import 'package:kodiks_case/injections/local_database/type/local_database_interface.dart';
import 'package:kodiks_case/models/task_model/task_model.dart';
import 'package:kodiks_case/repositories/task_repository/type/task_repository_interface.dart';

class TaskRepository implements ITaskRepository {
  @override
  IAppClient get httpClient => AppClient();

  @override
  ILocalDataBase get localDataBase => LocalDatabase();

  @override
  Future<void> addTask({required String url, required TaskModel value}) async {
    try {
      Map<String, dynamic> body = {
        "title": value.title,
        "body": value.description,
        "userId": 1,
      };

      Response response = await httpClient.post(url: url, body: body);

      if ((response.statusCode ?? 0) <= 299 && (response.statusCode ?? 0) >= 200) {
        await localDataBase.writeData(boxName: "tasks", value: value);
      }
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> deleteTask({required TaskModel data}) async{
    try {
      await localDataBase.deleteData(value: data);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<TaskModel>> getTasks() async{
    try {
      List<TaskModel> tasks = (await localDataBase.readData(boxName: "tasks")).map((element) => element as TaskModel).toList();

      return tasks;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
