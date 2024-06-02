class RouteConstants {
  static final RouteConstants _instance = RouteConstants._internal();

  factory RouteConstants() {
    return _instance;
  }

  RouteConstants._internal();

  final String initial = "/";
  final String addTaskView = "/add_task_view";
  final String detailTaskView = "/detail_task_view";

}