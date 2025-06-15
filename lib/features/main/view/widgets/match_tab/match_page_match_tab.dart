import 'package:chip_list/chip_list.dart';
import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/routes/index.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchPageMatchTab extends StatefulWidget {
  const MatchPageMatchTab({super.key});

  @override
  State<MatchPageMatchTab> createState() => _MatchPageMatchTabState();
}

class _MatchPageMatchTabState extends State<MatchPageMatchTab> {
  int tag = 1;
  List<String> options = [
    'Matchday1',
    'Matchday2',
    'Matchday3',
    'Matchday4',
    'Matchday5',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: Dimension.dimens_12),
        ChipList(
          listOfChipNames: options,
          widgetSpacing: Dimension.dimens_16,
          activeBgColorList: [Theme.of(context).primaryColor],
          inactiveBgColorList: const [Colors.white],
          inactiveBorderColorList: const [AppColor.grey_E8E8E8],
          activeTextColorList: const [Colors.white],
          inactiveTextColorList: const [AppColor.black_09040C],
          listOfChipIndicesCurrentlySeclected: [tag],
          borderRadiiList: const [Dimension.dimens_40],
          style: GoogleFonts.kanit(
            fontSize: TextFontSize.dimens_14,
            fontWeight: FontWeight.w500,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: Dimension.dimens_4,
            horizontal: Dimension.dimens_2,
          ),
          extraOnToggle: (index) => setState(() {
            tag = index;
          }),
        ),
        const SizedBox(height: Dimension.dimens_12),
        Container(
          color: AppColor.grey_E8E8E8,
          padding: const EdgeInsets.symmetric(vertical: Dimension.dimens_4),
          child: const Center(
            child: TextBase.colorBlackMedium(
              text: 'SATURDAY 9 SEPTEMBER 2023',
              fontSize: Dimension.dimens_16,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: Dimension.dimens_16,
            ),
            child: ListView.separated(
              padding: const EdgeInsets.all(Dimension.dimens_0),
              shrinkWrap: true,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Get.toNamed(
                  AppRoutes.matchDetailsPage,
                  id: AppRoutes.matchTabId,
                ),
                child: Container(
                  padding: const EdgeInsets.all(Dimension.dimens_14),
                  child: Row(
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
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/ic_ball.png',
                            width: Dimension.dimens_20,
                          ),
                          const SizedBox(height: Dimension.dimens_12),
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
                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                height: Dimension.dimens_1,
                color: AppColor.grey_747474,
              ),
              itemCount: 3,
            ),
          ),
        ),
      ],
    );
  }
}
