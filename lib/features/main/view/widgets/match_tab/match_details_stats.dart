import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class MatchDetailsStats extends StatelessWidget {
  const MatchDetailsStats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(Dimension.dimens_0),
      itemBuilder: (context, index) {
        String title = '';
        double teamA = 0;
        double teamB = 0;
        switch (index) {
          case 0:
            title = 'BALL POSSEESSION IN %';
            teamB = 0.68;
            teamA = 0.32;
          case 1:
            title = 'SHOTS ON GOAL';
            teamB = 3;
            teamA = 3;
          case 2:
            title = 'SHOTS ON GOAL';
            teamB = 3;
            teamA = 3;
          case 3:
            title = 'SHOTS ON GOAL';
            teamB = 3;
            teamA = 3;
          case 4:
            title = 'SHOTS ON GOAL';
            teamB = 3;
            teamA = 3;
          default:
            title = 'SHOTS ON GOAL';
            teamB = 3;
            teamA = 3;
        }
        return SizedBox(
          height: index == 0 ? Dimension.dimens_72 : Dimension.dimens_68,
          child: Column(
            children: [
              Container(
                height: index == 0 ? Dimension.dimens_20 : Dimension.dimens_16,
              ),
              Container(
                height: Dimension.dimens_30,
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: Dimension.dimens_18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextBase(
                        fontSize: Dimension.dimens_24,
                        color: AppColor.grey_979797,
                        weight: FontWeight.w600,
                        text: index == 0
                            ? (teamA * 100).toString()
                            : teamA.toStringAsFixed(0)),
                    TextBase.colorBlackMedium(text: title),
                    TextBase(
                        fontSize: Dimension.dimens_24,
                        color: AppColor.grey_979797,
                        weight: FontWeight.w600,
                        text: index == 0
                            ? (teamB * 100).toString()
                            : teamB.toStringAsFixed(0))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Dimension.dimens_18),
                child: SizedBox(
                  height: Dimension.dimens_4,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: <Widget>[
                            Container(
                              // height: AppDimens.dimens_8,

                              color: const Color(0xffE7E7E7),
                            ),
                            FractionallySizedBox(
                              alignment: Alignment.centerRight,
                              widthFactor:
                                  index == 0 ? teamA : teamA / (teamA + teamB),
                              child: Container(
                                color: const Color(0xff9705FA),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: Dimension.dimens_3,
                      ),
                      Expanded(
                        flex: 1,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              // height: AppDimens.dimens_8,

                              color: const Color(0xffE7E7E7),
                            ),
                            FractionallySizedBox(
                              widthFactor:
                                  index == 0 ? teamB : teamB / (teamA + teamB),
                              child: Container(
                                color: const Color(0xff19D2CC),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              const Divider(
                height: Dimension.dimens_1,
                color: AppColor.grey_E8E8E8,
              )
            ],
          ),
        );
      },
      itemCount: 6,
    );
  }
}
