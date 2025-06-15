import 'dart:developer';

import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/features/main/view/widgets/home_tab/index.dart';
import 'package:euro_app_24/features/main/view/widgets/skeleton/match_tab/match_group_tab_skeleton.dart';
import 'package:euro_app_24/models/response/standing.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/text_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../../core/app/index.dart';

class GroupPage extends GetView<MatchesController> {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.isLoadingSpanding
          ? const MatchGroupTabSkeleton()
          : ListView.builder(
              itemCount: controller.listSpandingGroup.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: Dimension.dimens_0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          overflow: TextOverflow.clip,
                          text: TextSpan(children: [
                            const WidgetSpan(
                              child: SizedBox(
                                width: Dimension.dimens_15,
                              ),
                            ),
                            TextSpan(
                              text: controller.seasonResponse.value.result!
                                  .data!.groups![index].name,
                              style: const TextStyle(
                                  color: AppColor.black,
                                  fontSize: Dimension.dimens_18,
                                  fontWeight: FontWeight.w600),
                            ),
                          ]),
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
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                              decoration: const BoxDecoration(
                                  color: AppColor.grey_E8E8E8),
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
                        SizedBox(
                          height: controller.listSpandingGroup[index].length *
                              Dimension.dimens_47,
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
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            children: List<TableRow>.generate(
                                controller.listSpandingGroup[index].length,
                                (indexSpanding) => buildTableRow(
                                    controller.listSpandingGroup[index],
                                    indexSpanding)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
    });
  }

  TableRow buildTableRow(
    List<Standing> listSpandingThisGroup,
    int indexStanding,
  ) {
    Color color;
    switch (indexStanding) {
      case 0:
      case 1:
      case 2:
        color = AppColor.blue_092370;
        break;
      case 3:
      case 4:
        color = AppColor.red_E87221;
        break;
      case 5:
        color = AppColor.green_339741;
        break;
      default:
        color = Colors.transparent;
    }
    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.top,
          child: RichText(
            overflow: TextOverflow.clip,
            text: TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: Dimension.dimens_6),
                    width: Dimension.dimens_2,
                    height: Dimension.dimens_35,
                    color: color,
                  ),
                ),
                const WidgetSpan(child: SizedBox(width: Dimension.dimens_6)),
                const TextSpan(
                  text: '-',
                  style: TextStyle(
                    color: AppColor.grey_6D6D71,
                  ),
                ),
                const WidgetSpan(child: SizedBox(width: Dimension.dimens_10)),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: SizedBox(
                    width: Dimension.dimens_16,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: TextBase(
                        fontSize: Dimension.dimens_14,
                        color: AppColor.blue_143CDA,
                        weight: FontWeight.w500,
                        text: '${indexStanding + 1}',
                      ),
                    ),
                  ),
                ),
                // TextSpan(
                //   text: '${index + 1}',
                //   style: const TextStyle(
                //     color: AppColor.blue_143CDA,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Image.network(
                    listSpandingThisGroup[indexStanding]
                        .participant!
                        .imagePath!,
                    width: Dimension.dimens_30,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const WidgetSpan(
                  child: SizedBox(
                    width: Dimension.dimens_5,
                  ),
                ),
                TextSpan(
                  text: listSpandingThisGroup[indexStanding]
                      .participant!
                      .shortCode!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: Dimension.dimens_12,
                  ),
                ),
              ],
            ),
          ),
        ),
        controller.buildTitleCell(
            listSpandingThisGroup[indexStanding].points.toString(),
            AppColor.blue_143CDA,
            FontWeight.w300),
        controller.buildTitleCell(
            listSpandingThisGroup[indexStanding].details![5].value.toString(),
            AppColor.grey_747474,
            FontWeight.w300),
        controller.buildTitleCell(
            listSpandingThisGroup[indexStanding].details![0].value.toString(),
            AppColor.grey_747474,
            FontWeight.w300),
        controller.buildTitleCell(
            listSpandingThisGroup[indexStanding].details![1].value.toString(),
            AppColor.grey_747474,
            FontWeight.w300),
        controller.buildTitleCell(
            listSpandingThisGroup[indexStanding].details![2].value.toString(),
            AppColor.grey_747474,
            FontWeight.w300),
        controller.buildTitleCell(
            listSpandingThisGroup[indexStanding].details![3].value.toString(),
            AppColor.grey_747474,
            FontWeight.w300),
        controller.buildTitleCell(
            listSpandingThisGroup[indexStanding].details![4].value.toString(),
            AppColor.grey_747474,
            FontWeight.w300),
      ],
    );
  }
}
