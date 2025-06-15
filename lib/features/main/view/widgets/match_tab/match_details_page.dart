import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/features/main/view/widgets/match_tab/match_details_group.dart';
import 'package:euro_app_24/features/main/view/widgets/match_tab/match_details_stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../routes/index.dart';
import '../../../../../ui/widgets/base_widgets/index.dart';

class MatchDetailsPage extends StatelessWidget {
  const MatchDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: Column(
        children: [
          BaseHeader.withLeading(
            onClick: () async {
              await Get.keys[AppRoutes.matchTabId]!.currentState!.maybePop();
            },
            title: 'ALA - ATH',
          ),
          Container(
            margin: const EdgeInsets.only(
              top: Dimension.dimens_18,
              left: Dimension.dimens_16,
              right: Dimension.dimens_16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/ic_logo_sm.svg'),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimension.dimens_12,
                    vertical: Dimension.dimens_10,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.dimens_40),
                      border: Border.all(
                        color: AppColor.grey_E8E8E8,
                        width: Dimension.dimens_1,
                      )),
                  child: const TextBase.colorBlackMedium(text: 'Matchday1'),
                ),
              ],
            ),
          ),
          const SizedBox(height: Dimension.dimens_12),
          Container(
            padding: const EdgeInsets.all(Dimension.dimens_14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Dimension.dimens_100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/img_team_size_78_1.png',
                        width: Dimension.dimens_78,
                      ),
                      const TextBase.colorBlackMedium(
                        text: 'DEPORTIVO ALAVÉS SAD',
                        fontSize: Dimension.dimens_12,
                        align: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const Column(
                  children: [
                    TextBase.colorOtherMedium(
                      text: 'SAT 21 OCT',
                      color: AppColor.grey_747474,
                      fontSize: TextFontSize.dimens_12,
                    ),
                    SizedBox(height: Dimension.dimens_8),
                    TextBase.colorBlackSemiBold(
                      textStyle: TextStyle(
                        fontFamily: 'Barbaro',
                        fontSize: TextFontSize.dimens_44,
                      ),
                      text: '02:00',
                    ),
                  ],
                ),
                SizedBox(
                  width: Dimension.dimens_100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/img_team_size_78_2.png',
                        width: Dimension.dimens_78,
                      ),
                      const TextBase.colorBlackMedium(
                        text: 'DEPORTIVO ALAVÉS SAD',
                        fontSize: TextFontSize.dimens_12,
                        align: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Dimension.dimens_18),
          const Divider(
            color: AppColor.grey_747474,
            height: Dimension.dimens_0,
          ),
          Expanded(
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimension.dimens_0,
                    ),
                    tabs: const [
                      Tab(text: 'Details'),
                      Tab(text: 'Line-ups'),
                      Tab(text: 'Stats'),
                      Tab(text: 'Group'),
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
                    color: AppColor.grey_747474,
                    height: Dimension.dimens_0,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: Dimension.dimens_18),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: Dimension.dimens_16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextBase.colorBlackExtraBold(
                                      text: 'Highlight Stats',
                                      fontSize: TextFontSize.dimens_18,
                                    ),
                                    const SizedBox(height: Dimension.dimens_16),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/svg/ic_goal.svg'),
                                        const SizedBox(
                                            width: Dimension.dimens_10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const TextBase.colorBlackMedium(
                                              text: 'J.Horn',
                                              fontSize: TextFontSize.dimens_14,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    right: Dimension.dimens_4,
                                                  ),
                                                  decoration:
                                                      const BoxDecoration(
                                                    border: Border(
                                                      right: BorderSide(
                                                        color: AppColor
                                                            .grey_E8E8E8,
                                                        width:
                                                            Dimension.dimens_1,
                                                      ),
                                                    ),
                                                  ),
                                                  child:
                                                      const TextBase.colorOther(
                                                    text: 'Own goal',
                                                    color: AppColor.grey_68676D,
                                                  ),
                                                ),
                                                const SizedBox(
                                                    width: Dimension.dimens_4),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    right: Dimension.dimens_4,
                                                  ),
                                                  decoration:
                                                      const BoxDecoration(
                                                    border: Border(
                                                      right: BorderSide(
                                                        color: AppColor
                                                            .grey_E8E8E8,
                                                        width:
                                                            Dimension.dimens_1,
                                                      ),
                                                    ),
                                                  ),
                                                  child:
                                                      const TextBase.colorOther(
                                                    text: '1:0',
                                                    color: AppColor.grey_68676D,
                                                  ),
                                                ),
                                                const SizedBox(
                                                    width: Dimension.dimens_4),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    right: Dimension.dimens_4,
                                                  ),
                                                  decoration:
                                                      const BoxDecoration(
                                                    border: Border(
                                                      right: BorderSide(
                                                        color: AppColor
                                                            .grey_E8E8E8,
                                                        width:
                                                            Dimension.dimens_1,
                                                      ),
                                                    ),
                                                  ),
                                                  child:
                                                      const TextBase.colorOther(
                                                    text: '34\'',
                                                    color: AppColor.grey_68676D,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: Dimension.dimens_24),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: Dimension.dimens_16,
                                ),
                                child: const TextBase.colorBlackExtraBold(
                                  text: 'Match Information',
                                  fontSize: TextFontSize.dimens_18,
                                ),
                              ),
                              ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                padding:
                                    const EdgeInsets.all(Dimension.dimens_0),
                                itemBuilder: (context, index) {
                                  String assetsIcon = '';
                                  String title = '';
                                  String subtitle = '';
                                  switch (index) {
                                    case 1:
                                      assetsIcon =
                                          'assets/images/ic_bundesliga.png';
                                      title = 'Round 32';
                                      subtitle = '2.Bundesliga';
                                      break;
                                    case 2:
                                      assetsIcon = assetsIcon =
                                          'assets/svg/ic_referee.svg';
                                      title = 'Felix Zwayer';
                                      subtitle = 'Referee';
                                      break;
                                    case 3:
                                      assetsIcon = 'assets/svg/ic_stadium.svg';

                                      title = 'MDCC-Arena';
                                      subtitle = 'Magdeburg';
                                      break;
                                    default:
                                      assetsIcon = 'assets/svg/ic_kickoff.svg';
                                      title = 'Yesterday 23:30';
                                      subtitle = 'Kickoff';
                                      break;
                                  }
                                  return Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: Dimension.dimens_16,
                                      vertical: Dimension.dimens_10,
                                    ),
                                    child: Row(
                                      children: [
                                        index == 1
                                            ? Image.asset(
                                                assetsIcon,
                                                width: Dimension.dimens_26,
                                              )
                                            : SvgPicture.asset(
                                                assetsIcon,
                                              ),
                                        const SizedBox(
                                          width: Dimension.dimens_10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextBase.colorBlack(
                                              text: title,
                                              fontSize: TextFontSize.dimens_12,
                                            ),
                                            TextBase.colorOther(
                                              text: subtitle,
                                              color: AppColor.grey_68676D,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) =>
                                    const Divider(
                                  color: AppColor.grey_747474,
                                  height: Dimension.dimens_0,
                                ),
                                itemCount: 4,
                              ),
                            ],
                          ),
                        ),
                        Container(),
                        const MatchDetailsStats(),
                        const MatchDetailsGroup(),
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
