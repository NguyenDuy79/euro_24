import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/base_widgets/text_base.dart';

class SectionFirstMoreTab extends StatelessWidget {
  const SectionFirstMoreTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Dimension.dimens_16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBase.colorBlackExtraBold(
            text: 'SECTIONS',
            fontSize: Dimension.dimens_18,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.only(
                top: Dimension.dimens_14,
                bottom: Dimension.dimens_14,
                left: Dimension.dimens_14,
                right: Dimension.dimens_16,
              ),
              color: AppColor.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/ic_more_news.svg'),
                      const SizedBox(width: Dimension.dimens_8),
                      TextBase.colorBlack(text: 'News'),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/svg/ic_arrow_chevron_right_grey.svg',
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: Dimension.dimens_10,
            ),
            itemCount: 3,
          ),
        ],
      ),
    );
  }
}
