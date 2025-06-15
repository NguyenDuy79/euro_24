


import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/core/theme/index.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:euro_app_24/ui/widgets/custom_widgets/index.dart';
import 'package:flutter/material.dart';

class StandOutYourTeamView extends StatelessWidget {
  const StandOutYourTeamView({
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
              title: 'STAND OUT YOUR TEAM',
              subTitle: 'Splash ea sports',
              trailing: 'SEE ALL',
              colorSubTitle: ThemeColors.primaryTextColorWhite,
              colorTitle: ThemeColors.primaryTextColorWhite,
              colorTrailing: ThemeColors.primaryTextColorWhite,
              isShowSubTitle: false,
            ),
          ),
          Expanded(
            child: ListView.separated(
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
                    Image.asset(
                      'assets/images/ic_best_player.png',
                      height: Dimension.dimens_image_height_topscorer,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Dimension.dimens_8,
                        ),
                        color: AppColor.black_09040C,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextBase.colorWhiteBold(
                                text: 'BELLINGHAM',
                              ),
                            ),
                            TextBase.colorWhiteBold(
                              text: '5',
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
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}