import 'package:euro_app_24/features/index.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../core/app/index.dart';

class MatchGroupTabSkeleton extends GetView<MatchesController> {
  const MatchGroupTabSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Skeletonizer(
            child: Row(
              children: [
                SizedBox(
                  width: Dimension.dimens_15,
                ),
                Text(
                  'Grop A',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: Dimension.dimens_18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Dimension.dimens_10,
          ),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(4.5),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(1),
              4: FlexColumnWidth(1),
              5: FlexColumnWidth(1),
              6: FlexColumnWidth(1),
              7: FlexColumnWidth(1),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: const BoxDecoration(color: AppColor.grey_E8E8E8),
                children: [
                  controller.buildTitleCell(
                      'TEAM', AppColor.black_09040C, null),
                  controller.buildTitleCell('PTS', AppColor.black_09040C, null),
                  controller.buildTitleCell('GP', AppColor.black_09040C, null),
                  controller.buildTitleCell('W', AppColor.black_09040C, null),
                  controller.buildTitleCell('D', AppColor.black_09040C, null),
                  controller.buildTitleCell('L', AppColor.black_09040C, null),
                  controller.buildTitleCell('GF', AppColor.black_09040C, null),
                  controller.buildTitleCell(
                    'GA',
                    AppColor.black_09040C,
                    null,
                  ),
                ],
              ),
            ],
          ),
          Skeletonizer(
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(4.5),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
                4: FlexColumnWidth(1),
                5: FlexColumnWidth(1),
                6: FlexColumnWidth(1),
                7: FlexColumnWidth(1),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                for (int i = 0; i < 5; i++)
                  TableRow(
                    children: [
                      controller.buildTitleCell(
                          'TEAM', AppColor.black_09040C, null),
                      controller.buildTitleCell(
                          'PTS', AppColor.black_09040C, null),
                      controller.buildTitleCell(
                          'GP', AppColor.black_09040C, null),
                      controller.buildTitleCell(
                          'W', AppColor.black_09040C, null),
                      controller.buildTitleCell(
                          'D', AppColor.black_09040C, null),
                      controller.buildTitleCell(
                          'L', AppColor.black_09040C, null),
                      controller.buildTitleCell(
                          'GF', AppColor.black_09040C, null),
                      controller.buildTitleCell(
                        'GA',
                        AppColor.black_09040C,
                        null,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
