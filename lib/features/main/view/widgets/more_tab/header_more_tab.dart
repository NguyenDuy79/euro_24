import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/base_widgets/text_base.dart';

class HeaderMoreTab extends GetView<MoreController> {
  const HeaderMoreTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.dimens_device_width,
      height: Dimension.dimens_device_width * 238 / 390,
      color: Colors.red,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/bg_header_more_tab.png',
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: Dimension.dimens_16,
            ),
            child: Column(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () => Get.to(const MyProfilePage()),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/ic_avatar_none.png',
                        width: Dimension.dimens_62,
                      ),
                      const SizedBox(width: Dimension.dimens_12),
                      const TextBase.colorWhiteMedium(text: 'See Profile'),
                      const SizedBox(width: Dimension.dimens_8),
                      SvgPicture.asset('assets/svg/ic_arrow_right_white.svg'),
                    ],
                  ),
                ),
                const SizedBox(height: Dimension.dimens_12),
                Container(
                  height: Dimension.dimens_80,
                  color: AppColor.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/ic_edit_profile.svg',
                            ),
                            const SizedBox(height: Dimension.dimens_8),
                            const TextBase.colorBlack(text: 'Edit profile'),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        color: AppColor.grey_747474,
                        width: Dimension.dimens_1,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/ic_notification.svg',
                            ),
                            const SizedBox(height: Dimension.dimens_8),
                            const TextBase.colorBlack(text: 'Notifications'),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        color: AppColor.grey_747474,
                        width: Dimension.dimens_1,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.teamPage, id: AppRoutes.moreTabId),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ic_more_favorite_teams_test.png',
                                width: Dimension.dimens_34,
                              ),
                              const TextBase.colorBlack(text: 'Athletic Club'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: Dimension.dimens_16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
