import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/app/index.dart';
import '../../../../ui/widgets/index.dart';
import '../../controller/matches_controller.dart';

import '../widgets/match_tab/index.dart';

class MatchesTab extends GetView<MatchesController> {
  const MatchesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const BaseHeader.withoutLeading(title: 'Matches'),
          TabBar(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimension.dimens_0,
            ),
            tabs: const [
              Tab(text: 'Matches'),
              Tab(text: 'Groups'),
              Tab(text: 'Ranking'),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Theme.of(context).primaryColor,
            indicatorWeight: Dimension.dimens_3,
            labelColor: Theme.of(context).primaryColor,
            labelStyle: GoogleFonts.kanit(
              fontSize: Dimension.dimens_14,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelColor: AppColor.black_09040C,
          ),
          const Divider(
            color: AppColor.grey_E8E8E8,
            height: Dimension.dimens_1,
          ),
          const Expanded(
            child: TabBarView(
              children: [
                MatchPageMatchTab(),
                GroupPage(),
                RankingPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
