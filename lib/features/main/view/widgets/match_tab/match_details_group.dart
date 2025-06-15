import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/app/index.dart';

class MatchDetailsGroup extends StatelessWidget {
  const MatchDetailsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: Dimension.dimens_12,
        ),
        Container(
          height: Dimension.dimens_27,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
          alignment: Alignment.center,
          child: const TitleOfGroupItem(
            title: 'Group H',
            trailing: 'SEE ALL',
            isShowSubTitle: false,
          ),
        ),
        const SizedBox(
          height: Dimension.dimens_12,
        ),
        Container(
          height: Dimension.dimens_26,
          color: AppColor.grey_E8E8E8,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: Dimension.dimens_180,
                child: const TextBase(
                  color: AppColor.black,
                  fontSize: TextFontSize.dimens_12,
                  weight: FontWeight.w500,
                  text: 'TEAM',
                ),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Dimension.dimens_24),
                child: Row(
                  children: [
                    paramItem('P', TextFontSize.dimens_12, FontWeight.w500),
                    paramItem('+/-', TextFontSize.dimens_12, FontWeight.w500),
                    paramItem('PTS', TextFontSize.dimens_12, FontWeight.w500),
                  ],
                ),
              ))
            ],
          ),
        ),
        Expanded(
          // height: (Dimension.dimens_37 + Dimension.dimens_6) * 6,
          child: ListView.builder(
              padding: const EdgeInsets.all(Dimension.dimens_0),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: Dimension.dimens_6,
                    ),
                    Container(
                      height: Dimension.dimens_37,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            width: Dimension.dimens_180,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: Dimension.dimens_7,
                                ),
                                Container(
                                  height: Dimension.dimens_1,
                                  width: Dimension.dimens_6,
                                  color: AppColor.black,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: Dimension.dimens_29,
                                  child: TextBase(
                                    color: AppColor.blue_143CDA,
                                    fontSize: TextFontSize.dimens_14,
                                    weight: FontWeight.w500,
                                    text: (index + 1).toString(),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimension.dimens_30,
                                  width: Dimension.dimens_30,
                                  child:
                                      Image.asset('assets/images/ic_rma.png'),
                                ),
                                const SizedBox(
                                  width: Dimension.dimens_4,
                                ),
                                const TextBase(
                                    fontSize: Dimension.dimens_12,
                                    color: AppColor.black,
                                    weight: FontWeight.w500,
                                    text: 'REAL MADRID')
                              ],
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Dimension.dimens_24),
                            child: Row(
                              children: [
                                paramItem('0', TextFontSize.dimens_14,
                                    FontWeight.w300),
                                paramItem('0', TextFontSize.dimens_14,
                                    FontWeight.w300),
                                paramItem('6', TextFontSize.dimens_14,
                                    FontWeight.w300),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                );
              }),
        )
      ],
    );
  }
}

Widget paramItem(String text, double fontSize, FontWeight fontWeight) {
  return Expanded(
    flex: 1,
    child: Center(
      child: TextBase(
          fontSize: fontSize,
          color: AppColor.black,
          weight: fontWeight,
          text: text),
    ),
  );
}
