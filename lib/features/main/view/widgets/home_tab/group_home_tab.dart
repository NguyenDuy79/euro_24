import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../core/app/index.dart';
import '../../../../../models/response/standing.dart';
import '../../../../../ui/widgets/index.dart';

class GroupHomeTab extends StatelessWidget {
  const GroupHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: Dimension.dimens_24,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Dimension.dimens_16,
      ),
      child: Column(
        children: [
          const TitleOfGroupItem(
            title: 'GROUP',
            trailing: 'SEE ALL',
            subTitle: 'SPLASH AE SPORTS',
          ),
          const SizedBox(height: Dimension.dimens_16),
          Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(Dimension.dimens_16),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(1.5),
                  1: FlexColumnWidth(5.5),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(1),
                  4: FlexColumnWidth(1),
                  5: FlexColumnWidth(1),
                },
                children: [
                  const TableRow(
                    children: [
                      TextBase.colorBlackMedium(
                        text: 'POS.',
                        fontSize: TextFontSize.dimens_12,
                      ),
                      TextBase.colorBlackMedium(
                        text: 'TEAM',
                        fontSize: TextFontSize.dimens_12,
                      ),
                      Center(
                        child: TextBase.colorBlackMedium(
                          text: 'W',
                          fontSize: TextFontSize.dimens_12,
                        ),
                      ),
                      Center(
                        child: TextBase.colorBlackMedium(
                          text: 'D',
                          fontSize: TextFontSize.dimens_12,
                        ),
                      ),
                      Center(
                        child: TextBase.colorBlackMedium(
                          text: 'L',
                          fontSize: TextFontSize.dimens_12,
                        ),
                      ),
                      Center(
                        child: TextBase.colorBlackMedium(
                          text: 'PTS',
                          fontSize: TextFontSize.dimens_12,
                        ),
                      ),
                    ],
                  ),
                  _buildTableRowValue(context),
                  _buildTableRowValue(context),
                  _buildTableRowValue(context),
                  _buildTableRowValue(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TableRow _buildTableRowValue(BuildContext context) {
    return TableRow(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: Dimension.dimens_4,
          ),
          child: Row(
            children: [
              Container(
                height: Dimension.dimens_36,
                width: Dimension.dimens_2,
                color: AppColor.blue_1B1A68,
              ),
              const SizedBox(width: Dimension.dimens_5),
              SvgPicture.asset(
                'assets/svg/ic_no_change.svg',
              ),
              const SizedBox(width: Dimension.dimens_18),
              TextBase.colorOtherMedium(
                text: '1',
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: Dimension.dimens_4,
          ),
          height: Dimension.dimens_36,
          child: Row(
            children: [
              Image.asset(
                'assets/images/ic_logo_team_3.png',
                width: Dimension.dimens_30,
              ),
              const SizedBox(width: Dimension.dimens_4),
              const TextBase.colorBlackMedium(
                text: 'REAL MADRID',
                fontSize: TextFontSize.dimens_12,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: Dimension.dimens_4,
          ),
          height: Dimension.dimens_36,
          child: const Center(
            child: TextBase.colorOther(
              text: '4',
              color: AppColor.grey_747474,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: Dimension.dimens_4,
          ),
          height: Dimension.dimens_36,
          child: const Center(
            child: TextBase.colorOther(
              text: '4',
              color: AppColor.grey_747474,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: Dimension.dimens_4,
          ),
          height: Dimension.dimens_36,
          child: const Center(
            child: TextBase.colorOther(
              text: '4',
              color: AppColor.grey_747474,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: Dimension.dimens_4,
          ),
          height: Dimension.dimens_36,
          child: Center(
            child: TextBase.colorOther(
              text: '12',
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
