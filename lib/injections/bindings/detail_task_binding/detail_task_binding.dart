import 'package:get/get.dart';
import 'package:kodiks_case/presentation/views/detail_task_view/view_model/detail_task_view_model.dart';

class DetailTaskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTaskViewModel());
  }
}