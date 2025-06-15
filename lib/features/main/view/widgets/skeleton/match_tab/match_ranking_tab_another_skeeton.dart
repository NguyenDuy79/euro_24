import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../core/app/index.dart';

class MatchRankingTabAnotherSkeleton extends StatelessWidget {
  const MatchRankingTabAnotherSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.separated(
        padding: const EdgeInsets.all(Dimension.dimens_0),
        itemCount: 20,
        itemBuilder: (context, index) => Container(
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
                const SizedBox(
                  width: Dimension.dimens_20,
                  child: Text(
                    '12°',
                    style: TextStyle(
                      color: AppColor.grey_68676D,
                      fontSize: Dimension.dimens_12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: Dimension.dimens_7),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: Dimension.dimens_50,
                        width: Dimension.dimens_50,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/ic_circle_avt.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: Dimension.dimens_11,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Cristiano Ronaldo',
                            style: TextStyle(
                              fontSize: Dimension.dimens_16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/ic_logo_team_3.png',
                                width: Dimension.dimens_30,
                                height: Dimension.dimens_30,
                              ),
                              const SizedBox(
                                width: Dimension.dimens_5,
                              ),
                              const Text(
                                'England',
                                style: TextStyle(
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
                const SizedBox(width: Dimension.dimens_18),
                const Text(
                  '5',
                  style: TextStyle(
                      color: AppColor.blue_143CDA,
                      fontSize: Dimension.dimens_28,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Barbaro'),
                ),
                const SizedBox(width: Dimension.dimens_18),
              ],
            )),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: Dimension.dimens_1),
      ),
    );
  }
}
