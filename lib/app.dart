import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/app/index.dart';
import 'core/theme/index.dart';
import 'routes/index.dart';

class EuroApp extends StatelessWidget {
  const EuroApp({
    Key? key,
  }) : super(key: key);

  static GlobalKey euroAppKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => GetMaterialApp(
        key: euroAppKey,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: Style.lightTheme,
        defaultTransition: Transition.fadeIn,
        getPages: AppPages.routes,
        initialRoute: AppRoutes.MAIN,
      ),
    );
  }
}
