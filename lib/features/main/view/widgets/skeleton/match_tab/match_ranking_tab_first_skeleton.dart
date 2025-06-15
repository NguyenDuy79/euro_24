import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../core/app/index.dart';

class MatchRankingTabFirstSkeleton extends StatelessWidget {
  const MatchRankingTabFirstSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Stack(
        children: [
          Positioned(
            right: Dimension.dimens_0,
            bottom: Dimension.dimens_20,
            child: Container(
              margin: const EdgeInsets.only(left: Dimension.dimens_10),
              child: Image.asset(
                'assets/images/img_best_play_test.png',
                height: Dimension.dimens_224,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: Dimension.dimens_16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: Dimension.dimens_4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Dimension.dimens_36),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '14',
                            style: TextStyle(
                              color: AppColor.blue_143CDA,
                              fontSize: Dimension.dimens_70,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Barbaro',
                            ),
                          ),
                          SizedBox(width: Dimension.dimens_8),
                          Text(
                            'SCORRERS',
                            style: TextStyle(
                              color: AppColor.blue_143CDA,
                              fontSize: Dimension.dimens_14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Dimension.dimens_26),
                      Text(
                        '1°',
                        style: TextStyle(
                          color: AppColor.blue_143CDA,
                          fontSize: Dimension.dimens_16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Cristiano Ronaldo',
                        style: TextStyle(
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
                    Image.asset(
                      'assets/images/ic_logo_team_2.png',
                      width: Dimension.dimens_28,
                      fit: BoxFit.fitWidth,
                    ),
                    const SizedBox(
                      width: Dimension.dimens_5,
                    ),
                    const Text(
                      'England',
                      style: TextStyle(
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
      ),
    );
    ;
  }
}
