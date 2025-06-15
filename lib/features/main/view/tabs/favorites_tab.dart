import 'package:euro_app_24/core/app/colors.dart';
import 'package:euro_app_24/core/app/dimens.dart';
import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../ui/widgets/index.dart';

class FavoritesTab extends GetView<FavoritesController> {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BaseHeader.withTrailing(
          title: 'Favorites',
          trailingAsset: 'assets/svg/ic_edit.svg',
          onClick: () {},
        ),
        const FavoritesTabbar(),
        const SizedBox(height: Dimension.dimens_65),
        FavoriteTeam(
          onAddClick: () => {
            // controller.getListTeamForUI()
            Get.toNamed(AppRoutes.selectTeamScreen, id: AppRoutes.favoriteTabId)
          },
        ),
        const SizedBox(height: Dimension.dimens_50),
        const Padding(
          padding: EdgeInsets.only(left: Dimension.dimens_14),
          child: TextBase.colorBlackExtraBold(
            text: "Followed teams",
            fontSize: Dimension.dimens_18,
          ),
        ),
        const SizedBox(height: Dimension.dimens_15),
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
        ),
      ],
    );
  }
}

class FavoritesTabbar extends StatelessWidget {
  const FavoritesTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE8E8E8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "Men's",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF143CDA),
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  color: const Color(0xFF143CDA),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Women's",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF09040C),
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  color: const Color(0xFFFFFFFF),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
