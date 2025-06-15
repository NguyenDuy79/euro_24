import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import '../widgets/home_tab/index.dart';

class HomeTab extends GetView<HomeController> {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        HeaderHomeTab(),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                MatchHomeTab(),
                SeasonGoalScorerHomeTab(),
                BestPlayHomeTab(),
                GroupHomeTab(),
                LatestNewsHomeTab()
              ],
            ),
          ),
        )
      ],
    );
  }
}
