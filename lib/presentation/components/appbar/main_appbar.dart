import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kodiks_case/utilities/constants/color_constants/color_constants.dart';
import 'package:kodiks_case/utilities/constants/text_style_constants/text_style_constants.dart';

class MainAppbar {
  PreferredSizeWidget appbar({required String title, required VoidCallback backButtonOnPressed}) {
    return AppBar(
      leading: CupertinoButton(
        child: Icon(
          Icons.arrow_back_ios,
          color: ColorConstants().darkBlue,
        ),
        onPressed: () => backButtonOnPressed(),
      ),
      title: Text(
        title,
        style: TextStyleConstants().w400s20DarkBlue,
      ),
      centerTitle: true,
      backgroundColor: ColorConstants().white,
    );
  }
}
