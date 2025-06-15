import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/core/theme/index.dart';
import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MatchHomeTabSkeleton extends StatelessWidget {
  const MatchHomeTabSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(Dimension.dimens_0),
        itemBuilder: (context, index) {
          if (index == 3) {
            return Container(
              margin: const EdgeInsets.only(top: Dimension.dimens_16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextBase.colorOtherMedium(
                    text: 'SEE CALENDAR',
                    color: AppColor.blue_2B6FCB,
                    fontSize: Dimension.dimens_12,
                  ),
                  SizedBox(width: Dimension.dimens_8),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            );
          }
          return _buildItemTeamVs(context);
        },
        itemCount: 4,
        separatorBuilder: (context, index) => const Divider(
          color: AppColor.grey_E8E8E8,
          height: Dimension.dimens_0,
          thickness: Dimension.dimens_1,
        ),
        shrinkWrap: true,
      ),
    );
  }

  Container _buildItemTeamVs(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Dimension.dimens_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: Dimension.dimens_10),
                Icon(Icons.circle_outlined),
                SizedBox(width: Dimension.dimens_12),
                TextBase.colorBlackMedium(
                  text: 'ENGLAND',
                  fontSize: TextFontSize.dimens_16,
                )
              ],
            ),
          ),
          Expanded(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.kanit(
                  fontSize: TextFontSize.dimens_11,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'SAT 9 SEP',
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.w500,
                      color: ThemeColors.primaryTextColorBlack,
                    ),
                  ),
                  TextSpan(
                    text: ' 02:00',
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextBase.colorBlackMedium(
                  text: 'ENGLAND',
                  fontSize: TextFontSize.dimens_16,
                ),
                SizedBox(width: Dimension.dimens_12),
                Icon(Icons.circle_outlined),
                SizedBox(width: Dimension.dimens_10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
