import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kodiks_case/core/localization/localization_keys.dart';
import 'package:kodiks_case/core/routes/app_pages.dart';

import 'utilities/constants/route_constants/route_constants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 740),
      child: GetMaterialApp(
        title: 'Kodiks Case',
        translations: LocalizationKeys(),
        locale: const Locale('tr', 'TR'),
        fallbackLocale: const Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        initialRoute: RouteConstants().initial,
        getPages: AppPages().pages,
      ),
    );
  }
}
