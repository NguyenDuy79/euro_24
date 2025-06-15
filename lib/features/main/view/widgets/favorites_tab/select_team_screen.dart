import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/routes/index.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SelectTeamScreen extends GetView<FavoritesController> {
  const SelectTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: Dimension.dimens_device_width,
            height: Dimension.dimens_device_width * 185 / 390,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/bg_header_home_tab.png',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: Dimension.dimens_16),
                        InkWell(
                          onTap: () async {
                            await Get.keys[AppRoutes.favoriteTabId]!.currentState!.maybePop();
                          },
                          child: SvgPicture.asset(
                            'assets/svg/ic_chevron_left.svg',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimension.dimens_16),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: Dimension.dimens_18),
          Expanded(
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: Center(
                child: GridView.count(
                  crossAxisCount: 4,
                  children: List.generate(
                    100,
                    (index) {
                      return Column(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/ic_round_flag.svg',
                            width: Dimension.dimens_44,
                            fit: BoxFit.fitWidth,
                          ),
                          const TextBase.colorOther(
                            text: 'North Macedonia',
                            color: AppColor.black_09040C,
                            align: TextAlign.center,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
