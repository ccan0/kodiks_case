import 'dart:ui';

import 'package:get/get.dart';
import 'package:kodiks_case/core/exception_handler/handler/exception_handler.dart';
import 'package:kodiks_case/injections/local_database/database/local_database.dart';
import 'package:kodiks_case/models/task_model/task_model.dart';
import 'package:kodiks_case/services/task_service/service/task_service.dart';
import 'package:kodiks_case/services/task_service/type/task_service_interface.dart';
import 'package:kodiks_case/utilities/constants/route_constants/route_constants.dart';

class TaskListViewModel extends GetxController {
  final ITaskService taskService = TaskService();

  RxList<TaskModel> tasks = <TaskModel>[].obs;
  TaskModel selectedTask = TaskModel();

  @override
  void onInit() async{
    await LocalDatabase().init();

    await getTasks();

    super.onInit();
  }

  void addButtonOnPressed() => Get.toNamed(RouteConstants().addTaskView);

  Future<void> getTasks() async {
    try {
      tasks.value = await taskService.getTasks();

      tasks.refresh();
    } on Exception catch (_) {
      ExceptionHandler().handleException(exceptionMessage: "haveSomeProblem".tr);
    }
  }

  void taskOnPressed({required TaskModel task}) {
    selectedTask = task;

    Get.toNamed(RouteConstants().detailTaskView);
  }

  void addTask({required TaskModel newTask}) {
    tasks.add(newTask);

    tasks.refresh();
  }

  void deleteTask({required TaskModel task}) {
    tasks.remove(task);

    tasks.refresh();
  }

  void changeLanguage() {
    if(Get.locale == const Locale("tr_TR")) {
      Get.updateLocale(const Locale("en_US"));
    } else {
      Get.updateLocale(const Locale("tr_TR"));
    }
  }
}
