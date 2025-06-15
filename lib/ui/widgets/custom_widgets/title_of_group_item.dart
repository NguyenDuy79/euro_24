import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app/index.dart';
import '../../../core/theme/index.dart';

class TitleOfGroupItem extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String trailing;
  final bool isShowSubTitle;
  final Color? colorTitle;
  final Color? colorSubTitle;
  final Color? colorTrailing;
  final double sizeTitle;
  final double sizeSubTitle;
  final double sizeTrailing;
  const TitleOfGroupItem({
    super.key,
    required this.title,
    this.subTitle,
    required this.trailing,
    this.isShowSubTitle = true,
    this.colorTitle,
    this.colorSubTitle,
    this.colorTrailing,
    this.sizeTitle = Dimension.dimens_18,
    this.sizeSubTitle = Dimension.dimens_14,
    this.sizeTrailing = Dimension.dimens_12,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextBase.colorOtherExtraBold(
              text: title,
              fontSize: sizeTitle,
              color: colorTitle ?? ThemeColors.primaryTextColorBlack,
            ),
            Row(
              children: [
                TextBase.colorOtherMedium(
                  text: trailing,
                  color: colorTrailing ?? Theme.of(context).primaryColor,
                  fontSize: sizeTrailing,
                ),
                const SizedBox(width: Dimension.dimens_6),
                SvgPicture.asset(
                  'assets/svg/ic_arrow_down_blue.svg',
                  colorFilter: ColorFilter.mode(
                    colorTrailing ?? Theme.of(context).primaryColor,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ],
        ),
        if (isShowSubTitle)
          TextBase.colorOther(
            text: subTitle ?? '',
            color: colorSubTitle ?? AppColor.grey_747474,
          ),
      ],
    );
  }
}
