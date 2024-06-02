import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kodiks_case/presentation/views/task_list_view/view_model/task_list_view_model.dart';
import 'package:kodiks_case/utilities/constants/color_constants/color_constants.dart';
import 'package:kodiks_case/utilities/constants/text_style_constants/text_style_constants.dart';

class TaskListView extends StatelessWidget {
  TaskListView({Key? key}) : super(key: key);

  final TaskListViewModel taskListViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants().white,
      appBar: AppBar(
        leading: CupertinoButton(
          child: Icon(
            Icons.language,
            color: ColorConstants().darkBlue,
          ),
          onPressed: () => taskListViewModel.changeLanguage(),
        ),
        title: Text(
          "taskList".tr,
          style: TextStyleConstants().w400s20DarkBlue,
        ),
        actions: [
          CupertinoButton(
            child: Icon(
              Icons.add,
              color: ColorConstants().green,
            ),
            onPressed: () => taskListViewModel.addButtonOnPressed(),
          ),
        ],
        centerTitle: true,
        backgroundColor: ColorConstants().white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50.h),
            Text(
              "tasks".tr.toUpperCase(),
              style: TextStyleConstants().w500s24DarkBlue,
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 5.w),
                  itemCount: taskListViewModel.tasks.value.length,
                  itemBuilder: (BuildContext context, int index) => CupertinoButton(
                    minSize: 0,
                    padding: EdgeInsets.zero,
                    onPressed: () => taskListViewModel.taskOnPressed(task: taskListViewModel.tasks[index]) ,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Container(
                        width: 300.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          color: ColorConstants().white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            CachedNetworkImage(imageUrl: taskListViewModel.tasks[index].imageUrl ?? ""),
                            SizedBox(width: 10.w),
                            Text(
                              taskListViewModel.tasks[index].title ?? "",
                              style: TextStyleConstants().w400s15DarkBlue,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
