

import 'package:euro_app_24/features/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/index.dart';

class MyProfileHeader extends GetView<MoreController> {
  const MyProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/bg_my_profile_header.png"),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: Dimension.dimens_60),
              const TextBase.colorWhite(
                text: 'My Profile',
                fontSize: Dimension.dimens_20,
                weight: FontWeight.w600,
              ),
              const SizedBox(height: Dimension.dimens_22),
              Image.asset(
                'assets/images/ic_avatar_none.png',
                width: Dimension.dimens_112,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: Dimension.dimens_60),
          child: Row(
            children: [
              const SizedBox(width: Dimension.dimens_16),
              InkWell(
                onTap: () => Get.back(),
                child: SvgPicture.asset(
                  'assets/svg/ic_chevron_left.svg',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}