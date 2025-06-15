import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/app/index.dart';
import 'text_base.dart';

class BaseHeader extends StatelessWidget {
  final Function()? onClick;
  final bool isShowLeading;
  final String title;
  final bool isShowTrailing;
  final String trailingAsset;

  const BaseHeader({
    super.key,
    this.onClick,
    this.isShowLeading = false,
    this.isShowTrailing = false,
    this.trailingAsset = '',
    required this.title,
  });

  const BaseHeader.withLeading({
    Key? key,
    required Function() onClick,
    required String title,
  }) : this(title: title, isShowLeading: true, onClick: onClick);

  const BaseHeader.withTrailing({
    Key? key,
    required Function() onClick,
    required String title,
    required String trailingAsset,
  }) : this(
            title: title,
            isShowTrailing: true,
            trailingAsset: trailingAsset,
            onClick: onClick);

  const BaseHeader.withoutLeading({
    Key? key,
    required String title,
  }) : this(key: key, title: title, isShowLeading: false);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimension.dimens_device_width,
      height: Dimension.dimens_device_width * 102 / 390,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/bg_header_match_tab.png',
          ),
          Stack(
            children: [
              if (isShowLeading)
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: Dimension.dimens_16),
                        InkWell(
                          onTap: onClick,
                          child: SvgPicture.asset(
                            'assets/svg/ic_chevron_left.svg',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimension.dimens_16),
                  ],
                ),
              if (isShowTrailing)
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: onClick,
                          child: SvgPicture.asset(
                            trailingAsset,
                          ),
                        ),
                        const SizedBox(width: Dimension.dimens_16),
                      ],
                    ),
                    const SizedBox(height: Dimension.dimens_16),
                  ],
                ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: isShowLeading
                        ? null
                        : const EdgeInsets.only(left: Dimension.dimens_16),
                    alignment: isShowLeading ? Alignment.center : null,
                    child: TextBase.colorWhiteSemiBold(
                      text: title,
                      fontSize: TextFontSize.dimens_20,
                    ),
                  ),
                  const SizedBox(height: Dimension.dimens_16),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
