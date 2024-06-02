import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kodiks_case/presentation/components/appbar/main_appbar.dart';
import 'package:kodiks_case/presentation/components/buttons/app_main_button.dart';
import 'package:kodiks_case/presentation/views/add_task_view/components/main_text_fom_field.dart';
import 'package:kodiks_case/presentation/views/add_task_view/view_model/add_task_view_model.dart';
import 'package:kodiks_case/utilities/constants/color_constants/color_constants.dart';
import 'package:kodiks_case/utilities/constants/validator_constants/validator_constants.dart';

class AddTaskView extends StatelessWidget {
  AddTaskView({Key? key}) : super(key: key);

  final AddTaskViewModel addTaskViewModel = Get.find<AddTaskViewModel>();

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants().white,
      appBar: MainAppbar().appbar(
        title: "addNewTask".tr,
        backButtonOnPressed: addTaskViewModel.backButtonOnPressed,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 30.w),
        child: Column(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  MainTextFormField(
                    labelText: "title".tr,
                    controller: addTaskViewModel.titleController,
                    validator: ValidatorConstants().nullOrEmpty,
                  ),
                  SizedBox(height: 10.h),
                  MainTextFormField(
                    labelText: "description".tr,
                    controller: addTaskViewModel.descriptionController,
                    validator: ValidatorConstants().nullOrEmpty,
                  ),
                  SizedBox(height: 10.h),
                  MainTextFormField(
                    labelText: "imageUrl".tr,
                    controller: addTaskViewModel.imageUrlController,
                    validator: ValidatorConstants().nullOrEmpty,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              height: 200.h,
              child: CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
                onDateChanged: addTaskViewModel.onDateChanged,
              ),
            ),
            SizedBox(height: 40.h),
            AppMainButton(
              buttonText: "save".tr,
              onPressed: () => addTaskViewModel.saveOnPressed(formKey: _formKey),
            ),
          ],
        ),
      ),
    );
  }
}
