

import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:flutter/material.dart';

class SchedulePageTeamDetails extends StatelessWidget {
  const SchedulePageTeamDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: ListView.builder(
          itemBuilder: (context, indes) {
            return Column(
              children: [
                Container(
                  color: AppColor.grey_E8E8E8,
                  padding:
                  const EdgeInsets.symmetric(vertical: Dimension.dimens_4),
                  child: const Center(
                    child: TextBase.colorBlackMedium(
                      text: 'SATURDAY 9 SEPTEMBER 2023',
                      fontSize: Dimension.dimens_16,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(Dimension.dimens_14),
                  child: Stack(
                    children: [
                      Row(
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
                                const SizedBox(height: Dimension.dimens_3),
                                const TextBase.colorBlackMedium(
                                  text: 'DEPORTIVO ALAVÉS SAD',
                                  fontSize: Dimension.dimens_12,
                                  align: TextAlign.center,
                                ),
                              ],
                            ),
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
                                const SizedBox(height: Dimension.dimens_3),
                                const TextBase.colorBlackMedium(
                                  text: 'ATHLETIC CLUB',
                                  fontSize: TextFontSize.dimens_12,
                                  align: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Column(
                          children: [
                            const TextBase.colorOther(
                              text: 'UEFA CHAMPIONS LEAGUE',
                              color: AppColor.grey_68676D,
                              weight: FontWeight.w400,
                            ),
                            const SizedBox(height: Dimension.dimens_16),
                            const TextBase.colorBlackSemiBold(
                              textStyle: TextStyle(
                                fontFamily: 'Barbaro',
                                fontSize: TextFontSize.dimens_30,
                                height: 1,
                              ),
                              text: '02:00',
                            ),
                            const SizedBox(height: Dimension.dimens_36),
                            TextBase.colorOtherMedium(
                              text: 'SEE PRVOS',
                              color: Theme.of(context).primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
          itemCount: 3),
    );
  }
}