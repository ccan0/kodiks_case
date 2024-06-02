import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kodiks_case/utilities/constants/color_constants/color_constants.dart';
import 'package:kodiks_case/utilities/constants/text_style_constants/text_style_constants.dart';

class AppMainButton extends StatelessWidget {
  const AppMainButton({Key? key, required this.buttonText, required this.onPressed}) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 304.w,
        height: 43.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ColorConstants().green,
          boxShadow: [
            BoxShadow(
              color: ColorConstants().shadowColorGreen,
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Text(
          buttonText,
          style: TextStyleConstants().w700s20LightColor,
        ),
      ),
    );
  }
}
