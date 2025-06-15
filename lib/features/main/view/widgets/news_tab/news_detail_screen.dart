import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../core/app/index.dart';
import '../../../../../routes/index.dart';
import '../../../../../ui/widgets/index.dart';
import '../../../controller/news_controller.dart';

class NewsDetailScreen extends GetView<NewsController> {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: Column(
        children: [
          BaseHeader.withLeading(
            onClick: () async {
              await Get.keys[AppRoutes.newsTabId]!.currentState!.maybePop();
            },
            title: 'News',
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(color: AppColor.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: Dimension.dimens_28),
                          const TextBase(
                              fontSize: Dimension.dimens_10,
                              color: AppColor.grey_747474,
                              weight: FontWeight.w400,
                              text: 'NEWS | NOTA DE PRENSA'),
                          const SizedBox(height: Dimension.dimens_12),
                          const Text(
                            'ALIGA IS BACK ON SORARE FOR THE 2023-2024 FOOTBALL SEASON',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimension.dimens_24,
                              color: AppColor.black_09040C,
                              fontFamily: 'Impact',
                            ),
                          ),
                          const SizedBox(height: Dimension.dimens_15),
                          Container(
                            width: Dimension.dimens_36,
                            height: Dimension.dimens_6,
                            decoration: const BoxDecoration(
                                color: AppColor.blue_143CDA),
                          ),
                          const SizedBox(height: Dimension.dimens_12),
                          const TextBase(
                            fontSize: Dimension.dimens_14,
                            color: AppColor.grey_747474,
                            weight: FontWeight.w300,
                            text:
                                'Sorare is a fantasy football game and marketplace transforming the way fans connect with the players and clubs they love. With Sorare, you collect, buy, sell, trade, and compete with digital player cards in free tournaments to win amazing rewards – just like a professional club owner.',
                          ),
                          const SizedBox(height: Dimension.dimens_8),
                          Row(
                            children: [
                              SvgPicture.asset('assets/svg/ic_clock.svg'),
                              const SizedBox(width: Dimension.dimens_4),
                              const TextBase(
                                  fontSize: Dimension.dimens_12,
                                  color: AppColor.grey_747474,
                                  weight: FontWeight.w400,
                                  text: 'WED 20.09.2023')
                            ],
                          ),
                          const SizedBox(height: Dimension.dimens_20),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/bg_news_image.png'),
                    const SizedBox(height: Dimension.dimens_8),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
                      child: TextBase(
                        fontSize: Dimension.dimens_14,
                        color: AppColor.grey_747474,
                        weight: FontWeight.w300,
                        text:
                            'Sorare is a fantasy football game and marketplace transforming the way fans connect with the players and clubs they love. With Sorare, you collect, buy, sell, trade, and compete with digital player cards in free tournaments to win amazing rewards – just like a professional club owner.',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
