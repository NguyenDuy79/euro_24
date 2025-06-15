

import 'package:euro_app_24/core/app/colors.dart';
import 'package:euro_app_24/core/app/dimens.dart';
import 'package:flutter/material.dart';

class PlayerDetailsTabBar extends StatelessWidget {
  const PlayerDetailsTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.grey_E8E8E8,
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
                  padding: EdgeInsets.symmetric(vertical: Dimension.dimens_12),
                  child: Text(
                    "Sumary",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Dimension.dimens_14,
                      color: AppColor.blue_143CDA,
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  color: AppColor.blue_143CDA,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: Dimension.dimens_10),
                  child: Text(
                    "Statistics",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColor.black_09040C,
                    ),
                  ),
                ),
                Container(
                  height: 3,
                  color: AppColor.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}