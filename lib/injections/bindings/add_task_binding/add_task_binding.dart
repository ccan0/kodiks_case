import 'package:get/get.dart';
import 'package:kodiks_case/presentation/views/add_task_view/view_model/add_task_view_model.dart';

class AddTaskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddTaskViewModel());
  }
}