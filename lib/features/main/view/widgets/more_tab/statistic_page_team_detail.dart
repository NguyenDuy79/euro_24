import 'package:euro_app_24/core/app/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../ui/widgets/base_widgets/index.dart';
import '../../../../../ui/widgets/custom_widgets/index.dart';

class StatisticsPageTeamDetail extends StatelessWidget {
  const StatisticsPageTeamDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: Dimension.dimens_12,
          ),
          Container(
            height: Dimension.dimens_27,
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
            alignment: Alignment.center,
            child: const TitleOfGroupItem(
              title: 'STADIUM',
              trailing: 'SEE MORE',
              isShowSubTitle: false,
            ),
          ),
          const SizedBox(
            height: Dimension.dimens_4,
          ),
          SizedBox(
              height: Dimension.dimens_67 * 5,
              child: ListView.builder(
                  padding: const EdgeInsets.all(Dimension.dimens_0),
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => SizedBox(
                        height: Dimension.dimens_67,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: Dimension.dimens_16,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: Dimension.dimens_34,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Dimension.dimens_14),
                              child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextBase.colorBlackMedium(
                                        text: 'TOTAl GOALS'),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          fontSize: TextFontSize.dimens_28,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.blue_143CDA,
                                          fontFamily:
                                              'assets/fonts/barbaro.roman.ttf'),
                                    )
                                  ]),
                            ),
                            const Expanded(child: SizedBox()),
                            const Divider(
                              height: Dimension.dimens_1,
                              color: AppColor.grey_E8E8E8,
                            )
                          ],
                        ),
                      ))),
          const SizedBox(
            height: Dimension.dimens_18,
          ),
          Container(
            height: Dimension.dimens_27,
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
            alignment: Alignment.center,
            child: const TitleOfGroupItem(
              title: 'TEAMPLAY',
              trailing: 'SEE MORE',
              isShowSubTitle: false,
            ),
          ),
          const SizedBox(
            height: Dimension.dimens_4,
          ),
          SizedBox(
              height: Dimension.dimens_67 * 5,
              child: ListView.builder(
                  padding: const EdgeInsets.all(Dimension.dimens_0),
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => SizedBox(
                        height: Dimension.dimens_67,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: Dimension.dimens_16,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: Dimension.dimens_34,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Dimension.dimens_14),
                              child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextBase.colorBlackMedium(
                                        text: 'TOTAl GOALS'),
                                    Text(
                                      '20',
                                      style: TextStyle(
                                          fontSize: TextFontSize.dimens_28,
                                          fontWeight: FontWeight.w600,
                                          color: AppColor.blue_143CDA,
                                          fontFamily:
                                              'assets/fonts/barbaro.roman.ttf'),
                                    )
                                  ]),
                            ),
                            const Expanded(child: SizedBox()),
                            const Divider(
                              height: Dimension.dimens_1,
                              color: AppColor.grey_E8E8E8,
                            )
                          ],
                        ),
                      ))),
        ],
      ),
    );
  }
}
