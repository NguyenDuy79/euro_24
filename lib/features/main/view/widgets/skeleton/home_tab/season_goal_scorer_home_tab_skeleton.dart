import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SeasonGoalScorerHomeTabSkeleton extends StatelessWidget {
  const SeasonGoalScorerHomeTabSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
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
              Image.asset('assets/images/img_player_test.png'),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimension.dimens_8,
                  ),
                  color: AppColor.black_09040C,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextBase.colorWhiteBold(text: 'BELLINGHAM'),
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
        itemCount: 4,
      ),
    );
  }
}
