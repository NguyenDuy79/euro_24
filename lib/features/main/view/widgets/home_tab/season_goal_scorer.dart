import 'package:cached_network_image/cached_network_image.dart';
import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/core/theme/index.dart';
import 'package:euro_app_24/features/main/controller/home_controller.dart';
import 'package:euro_app_24/features/main/view/widgets/skeleton/home_tab/season_goal_scorer_home_tab_skeleton.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeasonGoalScorerHomeTab extends GetView<HomeController> {
  const SeasonGoalScorerHomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.dimens_device_width,
      height: Dimension.dimens_height_season_goal_scorer,
      margin: const EdgeInsets.only(top: Dimension.dimens_28),
      padding: const EdgeInsets.only(
        top: Dimension.dimens_19,
        bottom: Dimension.dimens_30,
      ),
      color: AppColor.green_02B95D,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: Dimension.dimens_16,
            ),
            child: const TitleOfGroupItem(
              title: 'SEASON GOAL SCORERS',
              subTitle: 'Splash ea sports',
              trailing: 'SEE RANKING',
              colorSubTitle: ThemeColors.primaryTextColorWhite,
              colorTitle: ThemeColors.primaryTextColorWhite,
              colorTrailing: ThemeColors.primaryTextColorWhite,
            ),
          ),
          Obx(
            () => Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: controller.isLoadingTopScorer
                    ? const SeasonGoalScorerHomeTabSkeleton()
                    : _buildListTopscorers(
                        [...?controller.topScorerResponse.result?.data]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListView _buildListTopscorers(List<TopScorer> topscores) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.only(
        left: Dimension.dimens_16,
        top: Dimension.dimens_23,
      ),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Container(
        color: AppColor.white,
        width: Dimension.dimens_player_hometab_image_width,
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: topscores[index].player?.imagePath ?? '',
              height: Dimension.dimens_image_height_topscorer,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimension.dimens_8,
                ),
                color: AppColor.black_09040C,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextBase.colorWhiteBold(
                        text: topscores[index].player?.displayName ?? '',
                      ),
                    ),
                    TextBase.colorWhiteBold(
                      text: topscores[index].total.toString(),
                      fontSize: TextFontSize.dimens_32,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) =>
          const SizedBox(width: Dimension.dimens_8),
      itemCount: topscores.length > 10 ? 10 : topscores.length,
    );
  }
}
