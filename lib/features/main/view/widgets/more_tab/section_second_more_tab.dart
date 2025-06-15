import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/base_widgets/text_base.dart';

class SectionSecondMoreTab extends StatelessWidget {
  const SectionSecondMoreTab({
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
              padding: const EdgeInsets.all(Dimension.dimens_16),
              color: AppColor.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBase.colorOther(
                    text: 'Consents management',
                    color: Theme.of(context).primaryColor,
                  ),
                  SvgPicture.asset(
                    'assets/svg/ic_arrow_chevron_right_grey.svg',
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              height: Dimension.dimens_1,
              color: AppColor.grey_E8E8E8,
            ),
            itemCount: 4,
          ),
        ],
      ),
    );
  }
}
