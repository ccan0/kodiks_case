import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kodiks_case/injections/bindings/add_task_binding/add_task_binding.dart';
import 'package:kodiks_case/injections/bindings/detail_task_binding/detail_task_binding.dart';
import 'package:kodiks_case/injections/bindings/task_list_binding/task_list_binding.dart';
import 'package:kodiks_case/presentation/views/add_task_view/view/add_task_view.dart';
import 'package:kodiks_case/presentation/views/detail_task_view/view/detail_task_view.dart';
import 'package:kodiks_case/presentation/views/task_list_view/view/task_list_view.dart';
import 'package:kodiks_case/utilities/constants/route_constants/route_constants.dart';

class AppPages {
  List<GetPage> get pages => [
    GetPage(
      name: RouteConstants().initial,
      page: () => TaskListView(),
      binding: TaskListBinding(),
    ),
    GetPage(
      name: RouteConstants().addTaskView,
      page: () => AddTaskView(),
      binding: AddTaskBinding(),
    ),

    GetPage(
      name: RouteConstants().detailTaskView,
      page: () => DetailTaskView(),
      binding: DetailTaskBinding(),
    ),
  ];
}