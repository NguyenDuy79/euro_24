import 'package:cached_network_image/cached_network_image.dart';
import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/models/response/team_response.dart';
import 'package:euro_app_24/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../ui/widgets/index.dart';

class TeamsPage extends GetView<MoreController> {
  const TeamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseHeader.withLeading(
              onClick: () async {
            await Get.keys[AppRoutes.moreTabId]!.currentState!.maybePop();
            },
              title: 'Teams',
            ),
            const SizedBox(height: Dimension.dimens_24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
              child: TextBase(
                fontSize: Dimension.dimens_18,
                color: AppColor.black_09040C,
                weight: FontWeight.w800,
                text: 'SPLASH EA SPORTS',
              ),
            ),
            controller.isLoading
                ? Expanded(
                    child: Skeletonizer(
                        child: ListView.separated(
                            itemBuilder: (context, index) =>
                                _buildTeamListRow(-1),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: Dimension.dimens_12),
                            itemCount: 15)))
                : Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) =>
                            _buildTeamListRow(index),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: Dimension.dimens_12),
                        itemCount:
                            controller.teamResponse.result!.data!.length),
                  ),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildTeamListRow(int index) {
    return GestureDetector(
      onTap: () {
        controller.onTeamClick(controller.teamResponse.result!.data![index]);
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.grey_E8E8E8,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: Dimension.dimens_13,
            left: Dimension.dimens_16,
            right: Dimension.dimens_16,
          ),
          child: GestureDetector(
            onTap: () => controller.onTeamClick(controller.teamResponse.result!.data![index]),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/ic_team_rounded.png',
                          ),
                          radius: Dimension.dimens_26,
                        ),
                        CachedNetworkImage(
                          imageUrl: controller
                                  .teamResponse.result?.data?[index].imagePath ??
                              '',
                          width: Dimension.dimens_50,
                          imageBuilder: (context, imageProvider) => CircleAvatar(
                            radius: Dimension.dimens_25,
                            backgroundImage: imageProvider,
                          ),
                          errorWidget: (context, url, error) =>
                              const CircleAvatar(
                            radius: Dimension.dimens_25,
                            backgroundColor: AppColor.transparent,
                            backgroundImage: AssetImage(
                              'assets/images/ic_team_rounded.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: Dimension.dimens_2),
                      child: Visibility(
                        visible: index == 0,
                        child: Image.asset(
                          'assets/images/ic_team_star.png',
                          width: Dimension.dimens_16,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: Dimension.dimens_10),
                Expanded(
                  child: TextBase.colorBlack(
                    text: index == -1
                        ? 'Athletic Club'
                        : controller.teamResponse.result!.data![index].name,
                    weight: FontWeight.w500,
                    fontSize: Dimension.dimens_16,
                  ),
                ),
                SvgPicture.asset(
                  'assets/svg/ic_arrow_chevron_right_grey.svg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
