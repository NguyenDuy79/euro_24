import 'package:euro_app_24/repositories/new/news_repository.dart';
import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/app/index.dart';
import '../../../../../models/request/index.dart';
import '../../../../../models/response/index.dart';
import '../../../../../repositories/index.dart';

class HeaderHomeTab extends StatelessWidget {
  const HeaderHomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimension.dimens_device_width,
      height: Dimension.dimens_device_width * 185 / 390,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/bg_header_home_tab.png',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).viewPadding.top +
                      Dimension.dimens_16,
                  left: Dimension.dimens_16,
                ),
                child: SvgPicture.asset('assets/svg/ic_logo.svg'),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: Dimension.dimens_12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: Dimension.dimens_16),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const TextBase.colorWhiteMedium(
                              text: 'Featured',
                            ),
                          ),
                          const SizedBox(height: Dimension.dimens_14),
                          Container(
                            height: Dimension.dimens_4,
                            width: Dimension.dimens_74,
                            color: AppColor.grey_FBFBFB,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: Dimension.dimens_10),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svg/ic_add_circle.svg'),
                          const SizedBox(width: Dimension.dimens_4),
                          const TextBase.colorWhite(
                            text: 'Add team',
                            weight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
