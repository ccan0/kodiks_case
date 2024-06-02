// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kodiks_case/core/exception_handler/type/exception_handler_interface.dart';
import 'package:kodiks_case/utilities/constants/color_constants/color_constants.dart';
import 'package:kodiks_case/utilities/constants/text_style_constants/text_style_constants.dart';

class ExceptionHandler implements IExceptionHandler {
  static final ExceptionHandler _instance = ExceptionHandler._internal();

  factory ExceptionHandler() {
    return _instance;
  }

  ExceptionHandler._internal();

  @override
  void handleException({required String exceptionMessage}) {
    showExceptionSnackBar(exceptionMessage: exceptionMessage);
  }

  @override
  void showExceptionSnackBar({required String exceptionMessage}) {
    if (Get.isSnackbarOpen) return;

    Get.showSnackbar(
      GetSnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.transparent,
        messageText: Container(
          width: 336.w,
          height: 92.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorConstants().lightColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: ColorConstants().shadowColor,
                blurRadius: 10,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.error,size: 24.w, color: ColorConstants().errorColor),
              SizedBox(width: 12.w),
              SizedBox(
                width: 260.w,
                child: Text(
                  exceptionMessage,
                  style: TextStyleConstants().w400s20DarkBlue,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
