import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kodiks_case/core/exception_handler/handler/exception_handler.dart';
import 'package:kodiks_case/models/task_model/task_model.dart';
import 'package:kodiks_case/presentation/views/task_list_view/view_model/task_list_view_model.dart';
import 'package:kodiks_case/services/task_service/service/task_service.dart';
import 'package:kodiks_case/services/task_service/type/task_service_interface.dart';
import 'package:kodiks_case/utilities/constants/url_constants/url_constants.dart';

class AddTaskViewModel extends GetxController {
  final ITaskService taskService = TaskService();
  final TaskListViewModel taskListViewModel = Get.find();

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  DateTime dueDate = DateTime(1000);

  void backButtonOnPressed() {
    Get.back();
  }

  void onDateChanged(DateTime newValue) {
    dueDate = newValue;
  }

  void saveOnPressed({required GlobalKey<FormState> formKey}) async {
    try {
      if ((formKey.currentState?.validate() ?? false) && dueDate != DateTime(1000)) {
        TaskModel newTask = TaskModel();

        newTask.title = titleController.text;
        newTask.description = descriptionController.text;
        newTask.imageUrl = imageUrlController.text;
        newTask.dueDate = dueDate;

        await taskService.addTask(url: UrlConstants().addTask, value: newTask);
        taskListViewModel.addTask(newTask: newTask);

        Get.back();
      }
    } on Exception catch (_) {
      ExceptionHandler().handleException(
        exceptionMessage: "haveSomeProblem".tr,
      );
    }
  }
}
