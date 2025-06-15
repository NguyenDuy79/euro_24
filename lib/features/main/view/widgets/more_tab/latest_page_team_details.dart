import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/features/main/view/widgets/index.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:euro_app_24/ui/widgets/custom_widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LatestPageTeamDetails extends StatelessWidget {
  const LatestPageTeamDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: Dimension.dimens_20),
          _buildItemStory(),
          Column(
            children: [
              const SizedBox(height: Dimension.dimens_25),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.dimens_17,
                ),
                child: TitleOfGroupItem(
                  title: 'YOUR TEAM’S MATCHES',
                  trailing: 'SEE CALENDAR',
                  isShowSubTitle: false,
                ),
              ),
              const SizedBox(height: Dimension.dimens_12),
              _buildItemMatches(),
            ],
          ),
          const BestPlayHomeTab(),
          const StandOutYourTeamView(),
          Column(
            children: [
              const SizedBox(height: Dimension.dimens_20),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimension.dimens_17,
                ),
                child: TitleOfGroupItem(
                  title: 'LATEST NEWS',
                  trailing: 'SEE ALL',
                  isShowSubTitle: false,
                ),
              ),
              const SizedBox(height: Dimension.dimens_10),
              ListView.separated(
                padding: const EdgeInsets.all(Dimension.dimens_0),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const NewsListRow('', '', '', '',
                      color: AppColor.blue_143CDA);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: Dimension.dimens_18),
                itemCount: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }

  SizedBox _buildItemMatches() {
    return SizedBox(
      height: Dimension.dimens_125,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? Dimension.dimens_17 : Dimension.dimens_0,
              ),
              child: Container(
                width: Dimension.dimens_154,
                color: AppColor.grey_F4F4F4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: Dimension.dimens_8),
                    const Padding(
                      padding: EdgeInsets.only(left: Dimension.dimens_8),
                      child: TextBase.colorBlackMedium(
                        text: 'MON 25 SEP 2023',
                        fontSize: Dimension.dimens_12,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: Dimension.dimens_8),
                      child: TextBase.colorOther(
                        text: 'SPLASH EA SPORT',
                        color: AppColor.grey_979797,
                        fontSize: Dimension.dimens_10,
                      ),
                    ),
                    const SizedBox(height: Dimension.dimens_6),
                    const Divider(
                      color: AppColor.grey_E8E8E8,
                      height: Dimension.dimens_1,
                    ),
                    const SizedBox(height: Dimension.dimens_4),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/ic_gfc.png',
                          width: Dimension.dimens_32,
                          height: Dimension.dimens_32,
                        ),
                        const SizedBox(width: Dimension.dimens_1),
                        const SizedBox(
                          width: Dimension.dimens_50,
                          child: TextBase.colorBlackSemiBold(text: 'ATM'),
                        ),
                        SvgPicture.asset('assets/svg/ic_arrow_right_grey.svg'),
                        const Expanded(
                          child: Center(
                            child: Text('-'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/ic_gfc.png',
                          width: Dimension.dimens_32,
                          height: Dimension.dimens_32,
                        ),
                        const SizedBox(width: Dimension.dimens_1),
                        const SizedBox(
                          width: Dimension.dimens_50,
                          child: TextBase.colorBlackSemiBold(text: 'RMA'),
                        ),
                        SvgPicture.asset('assets/svg/ic_arrow_right_grey.svg'),
                        const Expanded(
                          child: Center(
                            child: Text('-'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: Dimension.dimens_16);
          },
          itemCount: 3),
    );
  }

  SizedBox _buildItemStory() {
    return SizedBox(
      height: Dimension.dimens_100,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? Dimension.dimens_17 : Dimension.dimens_0,
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/ic_blue_circle_story_team_details.svg",
                      width: Dimension.dimens_72,
                      height: Dimension.dimens_72,
                    ),
                    Image.asset(
                      height: Dimension.dimens_64,
                      width: Dimension.dimens_64,
                      'assets/images/ic_story_team_details.png',
                    ),
                  ],
                ),
                const TextBase.colorBlackMedium(
                  text: 'RMA - ATH',
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: Dimension.dimens_16);
        },
      ),
    );
  }
}
