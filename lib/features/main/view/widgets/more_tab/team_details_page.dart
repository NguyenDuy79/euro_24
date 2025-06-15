import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/core/theme/index.dart';
import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/features/main/view/widgets/home_tab/index.dart';
import 'package:euro_app_24/features/main/view/widgets/index.dart';
import 'package:euro_app_24/features/main/view/widgets/more_tab/club_page_team_details.dart';
import 'package:euro_app_24/features/main/view/widgets/more_tab/players_page_team_details.dart';
import 'package:euro_app_24/features/main/view/widgets/more_tab/statistic_page_team_detail.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:euro_app_24/ui/widgets/custom_widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamDetailsPage extends GetView<MoreController> {
  const TeamDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppColor.white,
      child: Column(
        children: [
          const TeamDetailsPageHeader(),
          Expanded(
            child: DefaultTabController(
              length: 6,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'Latest'),
                      Tab(text: 'Club'),
                      Tab(text: 'Statistic'),
                      Tab(text: 'Players'),
                      Tab(text: 'Schedule'),
                      Tab(text: 'Media'),
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
                        LatestPageTeamDetails(),
                        ClubPageTeamDetails(),
                        StatisticsPageTeamDetail(),
                        PlayersPageTeamDetails(),
                        SchedulePageTeamDetails(),
                        MediaPageTeamDetails(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
