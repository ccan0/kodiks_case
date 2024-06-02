import 'package:get/get.dart';
import 'package:kodiks_case/core/exception_handler/handler/exception_handler.dart';
import 'package:kodiks_case/presentation/views/task_list_view/view_model/task_list_view_model.dart';
import 'package:kodiks_case/services/task_service/service/task_service.dart';
import 'package:kodiks_case/services/task_service/type/task_service_interface.dart';

class DetailTaskViewModel extends GetxController {
  final ITaskService taskService = TaskService();
  final TaskListViewModel taskListViewModel = Get.find();

  void backButtonOnPressed() {
    Get.back();
  }

  void deleteButtonOnPressed() async {
    try {
      taskService.deleteTask(data: taskListViewModel.selectedTask);

      taskListViewModel.deleteTask(task: taskListViewModel.selectedTask);

      Get.back();
    } on Exception catch (_) {
      ExceptionHandler().handleException(exceptionMessage: "haveSomeProblem".tr);
    }
  }
}