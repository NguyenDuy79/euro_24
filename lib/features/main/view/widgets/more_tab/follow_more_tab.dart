import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/base_widgets/text_base.dart';

class FollowMoreTab extends StatelessWidget {
  const FollowMoreTab({
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
            text: 'FOLLOW',
            fontSize: Dimension.dimens_18,
          ),
          const SizedBox(height: Dimension.dimens_12),
          Row(
            children: [
              ...List.generate(
                5,
                (index) => Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/ic_more_insta.svg',
                      height: Dimension.dimens_32,
                    ),
                    const SizedBox(width: Dimension.dimens_16),
                  ],
                ),
              ).toList()
            ],
          ),
        ],
      ),
    );
  }
}
