import 'package:euro_app_24/ui/widgets/base_widgets/text_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/app/index.dart';
import '../widgets/more_tab/index.dart';

class MoreTab extends StatelessWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.grey_F4F4F4,
      child: Column(
        children: [
          const HeaderMoreTab(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: Dimension.dimens_24),
                  const SectionFirstMoreTab(),
                  const SizedBox(height: Dimension.dimens_24),
                  const SectionSecondMoreTab(),
                  const SizedBox(height: Dimension.dimens_24),
                  const FollowMoreTab(),
                  const SizedBox(height: Dimension.dimens_24),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: Dimension.dimens_16,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(Dimension.dimens_5),
                    ),
                    padding: const EdgeInsets.all(Dimension.dimens_14),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/svg/ic_log_out.svg'),
                        const SizedBox(width: Dimension.dimens_8),
                        const TextBase.colorWhite(text: 'Logout'),
                      ],
                    ),
                  ),
                  const SizedBox(height: Dimension.dimens_24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
