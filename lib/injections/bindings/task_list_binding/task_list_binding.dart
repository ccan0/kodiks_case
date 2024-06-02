import 'package:get/get.dart';
import 'package:kodiks_case/presentation/views/task_list_view/view_model/task_list_view_model.dart';

class TaskListBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TaskListViewModel(), permanent: true);
  }
}