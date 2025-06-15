import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/features/main/view/widgets/home_tab/index.dart';
import 'package:euro_app_24/features/main/view/widgets/index.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:euro_app_24/ui/widgets/custom_widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MediaPageTeamDetails extends StatelessWidget {
  const MediaPageTeamDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimension.dimens_20),
          SizedBox(
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
          ),
          const SizedBox(height: Dimension.dimens_20),
          const BestPlayHomeTab(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Dimension.dimens_24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimension.dimens_15),
                child: TextBase.colorBlackExtraBold(text: 'LATEST VIDEOS'),
              ),
              SizedBox(
                height: Dimension.dimens_242,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(
                            left: index == 0
                                ? Dimension.dimens_15
                                : Dimension.dimens_0,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/bg_latest_videos.png",
                                height: Dimension.dimens_242,
                                width: Dimension.dimens_292,
                                fit: BoxFit.fitHeight,
                                color: AppColor.black.withOpacity(0.5),
                                colorBlendMode: BlendMode.softLight,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: Dimension.dimens_12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TextBase.colorWhiteMedium(
                                        text: 'Real Madrid bounce back'),
                                    const SizedBox(height: Dimension.dimens_6),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  Dimension.dimens_20),
                                            ),
                                            color: AppColor.blue_143CDA,
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: Dimension.dimens_5,
                                              vertical: Dimension.dimens_5),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/svg/ic_arrow_right_white_play_btn.svg'),
                                              const SizedBox(
                                                  width: Dimension.dimens_5),
                                              const TextBase.colorOther(
                                                text: '03:02',
                                                color: AppColor.white,
                                                weight: FontWeight.w400,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const TextBase.colorOther(
                                          text: 'VIDEOS / HIGHLIGHTS',
                                          color: AppColor.white,
                                          weight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: Dimension.dimens_20),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: Dimension.dimens_16),
                    itemCount: 3),
              ),
              Column(
                children: [
                  const SizedBox(height: Dimension.dimens_24),
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
              )
            ],
          )
        ],
      ),
    );
  }
}
