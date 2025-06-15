import 'package:chip_list/chip_list.dart';
import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/features/main/view/widgets/skeleton/match_tab/match_ranking_tab_another_skeleton.dart';
import 'package:euro_app_24/features/main/view/widgets/skeleton/match_tab/match_ranking_tab_first_skeleton.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/routes/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app/index.dart';

class RankingPage extends GetView<MatchesController> {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    int tag = 1;
    List<String> options = [
      'Scores',
      'Shots',
      'Passes',
      'Assists',
      'Recover',
    ];
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: double.infinity,
      width: double.infinity,
      child: Obx(
        () => Column(
          children: [
            const SizedBox(height: Dimension.dimens_12),
            _buildChips(options, context),
            const SizedBox(height: Dimension.dimens_12),
            controller.isLoadingTopScorer
                ? const MatchRankingTabFirstSkeleton()
                : _buildBanner(
                    controller.topScorerResponse.result!.data!.first),
            _buildTableHeader(),
            controller.isLoadingTopScorer
                ? const Expanded(child: MatchRankingTabAnotherSkeleton())
                : Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.all(Dimension.dimens_0),
                      itemCount: 20,
                      itemBuilder: (context, index) => createRow(controller
                          .topScorerResponse.result!.data![index + 1]),
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: Dimension.dimens_1),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Container _buildTableHeader() {
    return Container(
      decoration: const BoxDecoration(color: AppColor.grey_E8E8E8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: Dimension.dimens_3,
                bottom: Dimension.dimens_3,
                left: Dimension.dimens_15),
            child: Text(
              'POS.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: Dimension.dimens_12,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: Dimension.dimens_62),
              child: Text(
                'PLAYER',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Dimension.dimens_12,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: Dimension.dimens_8),
            child: Text(
              'SCORERS',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: Dimension.dimens_12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack _buildBanner(TopScorer topScorer) {
    return Stack(
      children: [
        // Container(
        //   margin: const EdgeInsets.only(left: Dimension.dimens_10),
        //   child: Image.asset(
        //     'assets/images/bg_ranking_player.png',
        //     height: Dimension.dimens_224,
        //     fit: BoxFit.fitHeight,
        //   ),
        // ),
        Positioned(
          right: Dimension.dimens_0,
          bottom: Dimension.dimens_20,
          child: Container(
            margin: const EdgeInsets.only(left: Dimension.dimens_10),
            child: Image.network(
              topScorer.player!.imagePath!,
              height: Dimension.dimens_180,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: Dimension.dimens_16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: Dimension.dimens_4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: Dimension.dimens_36),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          topScorer.total.toString(),
                          style: const TextStyle(
                            color: AppColor.blue_143CDA,
                            fontSize: Dimension.dimens_70,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Barbaro',
                          ),
                        ),
                        const SizedBox(width: Dimension.dimens_8),
                        const Text(
                          'SCORRERS',
                          style: TextStyle(
                            color: AppColor.blue_143CDA,
                            fontSize: Dimension.dimens_14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimension.dimens_26),
                    const Text(
                      '1°',
                      style: TextStyle(
                        color: AppColor.blue_143CDA,
                        fontSize: Dimension.dimens_16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      topScorer.player!.commonName!,
                      style: const TextStyle(
                        color: AppColor.black_09040C,
                        fontSize: Dimension.dimens_24,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Impact',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    topScorer.player!.country!.imagePath!,
                    width: Dimension.dimens_28,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    width: Dimension.dimens_5,
                  ),
                  Text(
                    topScorer.player!.country!.name!,
                    style: const TextStyle(
                      color: AppColor.black_09040C,
                      fontSize: Dimension.dimens_14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildChips(List<String> options, BuildContext context) {
    return ChipList(
      listOfChipNames: options,
      widgetSpacing: Dimension.dimens_16,
      activeBgColorList: [Theme.of(context).primaryColor],
      inactiveBgColorList: const [Colors.white],
      inactiveBorderColorList: const [AppColor.grey_E8E8E8],
      activeTextColorList: const [Colors.white],
      inactiveTextColorList: const [AppColor.black_09040C],
      listOfChipIndicesCurrentlySeclected: [controller.selectedChip],
      borderRadiiList: const [Dimension.dimens_40],
      style: GoogleFonts.kanit(
        fontSize: TextFontSize.dimens_14,
        fontWeight: FontWeight.w500,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: Dimension.dimens_4,
        horizontal: Dimension.dimens_2,
      ),
    );
  }

  Container createRow(TopScorer topScorer) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColor.grey_E8E8E8,
            width: Dimension.dimens_1,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: Dimension.dimens_15),
          SizedBox(
            width: Dimension.dimens_20,
            child: Text(
              '${topScorer.position}°',
              style: const TextStyle(
                color: AppColor.grey_68676D,
                fontSize: Dimension.dimens_12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: Dimension.dimens_7),
          Expanded(
            child: GestureDetector(
              onTap: () => Get.toNamed(
                AppRoutes.playerDetailsPage,
                id: AppRoutes.matchTabId,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Dimension.dimens_50,
                    width: Dimension.dimens_50,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        topScorer.player!.imagePath!,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: Dimension.dimens_11,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        topScorer.player!.commonName!,
                        style: const TextStyle(
                          fontSize: Dimension.dimens_16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.network(
                            topScorer.player!.country!.imagePath!,
                            width: Dimension.dimens_30,
                            height: Dimension.dimens_30,
                          ),
                          const SizedBox(
                            width: Dimension.dimens_5,
                          ),
                          Text(
                            topScorer.player!.country!.name!,
                            style: const TextStyle(
                              fontSize: Dimension.dimens_12,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: Dimension.dimens_18),
          Text(
            topScorer.total!.toString(),
            style: const TextStyle(
                color: AppColor.blue_143CDA,
                fontSize: Dimension.dimens_28,
                fontWeight: FontWeight.w400,
                fontFamily: 'Barbaro'),
          ),
          const SizedBox(width: Dimension.dimens_18),
        ],
      ),
    );
  }
}
