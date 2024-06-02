import 'package:flutter/material.dart';
import 'package:kodiks_case/utilities/constants/color_constants/color_constants.dart';
import 'package:kodiks_case/utilities/constants/text_style_constants/text_style_constants.dart';

class MainTextFormField extends StatelessWidget {
  const MainTextFormField({Key? key, required this.labelText, required this.controller, required this.validator}) : super(key: key);

  final String labelText;
  final TextEditingController controller;
  final Function(String?) validator;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator(value),
      controller: controller,
      cursorColor: ColorConstants().darkBlue,
      style: TextStyleConstants().w400s16DarkGrey,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyleConstants().w400s16ShadowColor,
        errorStyle: TextStyleConstants().w400s16ErrorColor,
        floatingLabelStyle: TextStyleConstants().w400s12DarkGrey,
        border: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstants().shadowColor)),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstants().shadowColor)),
        errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstants().errorColor)),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstants().darkBlue)),
      ),
    );
  }
}
