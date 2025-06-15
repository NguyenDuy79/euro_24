import 'package:cached_network_image/cached_network_image.dart';
import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/core/theme/index.dart';
import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/features/main/view/widgets/skeleton/home_tab/match_home_tab_skeleton.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';

class MatchHomeTab extends GetView<HomeController> {
  const MatchHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: Dimension.dimens_16,
        right: Dimension.dimens_16,
        top: Dimension.dimens_16,
      ),
      child: Column(
        children: [
          const TitleOfGroupItem(
            title: 'MATCHES',
            trailing: 'SEE MORE',
            isShowSubTitle: false,
          ),
          const SizedBox(height: Dimension.dimens_12),
          Container(
            height: Dimension.dimens_32,
            color: AppColor.grey_E8E8E8,
            child: const Center(
              child: TextBase.colorBlackMedium(
                text: 'LALIGA HYPERMOTION',
                fontSize: Dimension.dimens_16,
              ),
            ),
          ),
          Obx(
            () {
              final List<Fixture> subFixture = getSubListFixutre(
                [...?controller.seasonResponse.result?.data?.fixtures],
              );

              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                child: controller.isLoading
                    ? const MatchHomeTabSkeleton()
                    : ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(Dimension.dimens_0),
                        itemBuilder: (context, index) {
                          if (index == 3) {
                            return Container(
                              margin: const EdgeInsets.only(
                                  top: Dimension.dimens_16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const TextBase.colorOtherMedium(
                                    text: 'SEE CALENDAR',
                                    color: AppColor.blue_2B6FCB,
                                    fontSize: Dimension.dimens_12,
                                  ),
                                  const SizedBox(width: Dimension.dimens_8),
                                  SvgPicture.asset(
                                    'assets/svg/ic_arrow_right_blue.svg',
                                  ),
                                ],
                              ),
                            );
                          }
                          return _buildItemTeamVs(context, subFixture[index]);
                        },
                        separatorBuilder: (context, index) => const Divider(
                          color: AppColor.grey_E8E8E8,
                          height: Dimension.dimens_0,
                          thickness: Dimension.dimens_1,
                        ),
                        itemCount: subFixture.length + 1,
                        shrinkWrap: true,
                      ),
              );
            },
          )
        ],
      ),
    );
  }

  List<Fixture> getSubListFixutre(List<Fixture> fixture) {
    if (fixture.isEmpty) return fixture;
    if (fixture.length > 3) {
      return fixture.sublist(0, 3);
    }
    return fixture;
  }

  Container _buildItemTeamVs(BuildContext context, Fixture fixture) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Dimension.dimens_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: Dimension.dimens_10),
                CachedNetworkImage(
                  imageUrl: fixture.participants?[0].imagePath ?? '',
                  width: Dimension.dimens_30,
                ),
                const SizedBox(width: Dimension.dimens_12),
                TextBase.colorBlackMedium(
                  text: _buildNameOrShortName(
                    fixture.participants?[0].name ?? '',
                    fixture.participants?[0].shortCode ?? '',
                  ),
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
                    text: _parseDate(fixture.startingAt ?? '').toUpperCase(),
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.w500,
                      color: ThemeColors.primaryTextColorBlack,
                    ),
                  ),
                  TextSpan(
                    text: ' ${_parseTime(fixture.startingAt ?? '')}',
                    style: GoogleFonts.kanit(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextBase.colorBlackMedium(
                  text: fixture.participants?[1].name ?? '',
                  fontSize: TextFontSize.dimens_16,
                ),
                const SizedBox(width: Dimension.dimens_12),
                CachedNetworkImage(
                  imageUrl: fixture.participants?[1].imagePath ?? '',
                  width: Dimension.dimens_30,
                ),
                const SizedBox(width: Dimension.dimens_10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _buildNameOrShortName(String name, String shortName) {
    if (name.isEmpty) return name;
    if (name.length > 9) {
      return shortName;
    }
    return name;
  }

  String _parseDate(String date) {
    if (date.isEmpty) return date;
    String dateStr = '';
    try {
      dateStr = Jiffy.parse(date).format(pattern: 'EE dd MMM');
      return dateStr;
    } catch (e) {
      return dateStr;
    }
  }

  String _parseTime(String date) {
    if (date.isEmpty) return date;
    String dateStr = '';
    try {
      dateStr = Jiffy.parse(date).format(pattern: 'h:mm a');
      return dateStr;
    } catch (e) {
      return dateStr;
    }
  }
}
