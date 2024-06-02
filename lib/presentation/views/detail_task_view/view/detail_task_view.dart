import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kodiks_case/presentation/components/appbar/main_appbar.dart';
import 'package:kodiks_case/presentation/components/buttons/app_main_button.dart';
import 'package:kodiks_case/presentation/views/detail_task_view/view_model/detail_task_view_model.dart';
import 'package:kodiks_case/presentation/views/task_list_view/view_model/task_list_view_model.dart';
import 'package:kodiks_case/utilities/constants/color_constants/color_constants.dart';
import 'package:kodiks_case/utilities/constants/text_style_constants/text_style_constants.dart';

class DetailTaskView extends StatelessWidget {
  DetailTaskView({Key? key}) : super(key: key);

  final TaskListViewModel taskListViewModel = Get.find();
  final DetailTaskViewModel detailTaskViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants().white,
      appBar: MainAppbar().appbar(title: "taskDetail".tr, backButtonOnPressed: () => detailTaskViewModel.backButtonOnPressed()),
      floatingActionButton: AppMainButton(
        buttonText: 'delete'.tr,
        onPressed: () => detailTaskViewModel.deleteButtonOnPressed(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 24.w),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 15.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      taskListViewModel.selectedTask.title ?? "",
                      style: TextStyleConstants().w500s24DarkBlue,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "${taskListViewModel.selectedTask.dueDate?.day}.${taskListViewModel.selectedTask.dueDate?.month}.${taskListViewModel.selectedTask.dueDate?.year}",
                      style: TextStyleConstants().w400s12DarkGrey,
                    )
                  ],
                ),
                CachedNetworkImage(
                  imageUrl: taskListViewModel.selectedTask.imageUrl ?? "",
                  width: 75.w,
                  height: 75.w,
                ),
              ],
            ),
            const Divider(),
            SizedBox(height: 25.h),
            Text(taskListViewModel.selectedTask.description ?? ""),
          ],
        ),
      ),
    );
  }
}
