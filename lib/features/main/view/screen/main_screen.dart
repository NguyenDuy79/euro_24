import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app/index.dart';
import '../../controller/main_controller.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: controller.listNavigationBarItems,
            currentIndex: controller.currentIndex,
            onTap: controller.onChangeTab,
            backgroundColor: AppColor.grey_FBFBFB,
          ),
          body: IndexedStack(
            index: controller.currentIndex,
            children: controller.tabList,
          ),
        ),
      ),
    );
  }
}
