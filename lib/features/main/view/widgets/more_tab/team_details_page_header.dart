import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/routes/index.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TeamDetailsPageHeader extends StatelessWidget {
  const TeamDetailsPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimension.dimens_device_width,
      height: (Dimension.dimens_device_width / 390) * 171,
      color: AppColor.blue_2B6FCB,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/bg_header_team_details_tab.png',
          ),
          Padding(
            padding: const EdgeInsets.only(left: Dimension.dimens_16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: TextBase.colorWhiteSemiBold(
                          text: 'Real Madrid',
                          fontSize: Dimension.dimens_20,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Get.keys[AppRoutes.moreTabId]!.currentState!
                            .maybePop();
                      },
                      child: SvgPicture.asset(
                        'assets/svg/ic_chevron_left.svg',
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextBase.colorWhiteMedium(
                            text: 'SFLASH EA SPORTS'),
                        SizedBox(height: Dimension.dimens_7),
                        Text(
                          'REAL MADRID CLUB DE FÚTBOL',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: Dimension.dimens_24,
                            color: AppColor.white,
                            fontFamily: 'Impact',
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                        width: (Dimension.dimens_device_width / 390) * 88,
                        height:
                        (Dimension.dimens_device_width / 390) * 88,
                        'assets/images/ic_team_details_header.png'),
                  ],
                ),
                const SizedBox(height: Dimension.dimens_8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
