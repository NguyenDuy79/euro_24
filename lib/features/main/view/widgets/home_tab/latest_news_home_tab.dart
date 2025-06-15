import 'package:flutter/material.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/index.dart';

class LatestNewsHomeTab extends StatelessWidget {
  const LatestNewsHomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: Dimension.dimens_20,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: Dimension.dimens_16,
            ),
            child: TitleOfGroupItem(
              title: 'LATEST NEWS',
              trailing: 'SEE ALL',
              subTitle: 'SPLASH EA SPORTS',
            ),
          ),
          SizedBox(
            height: 290,
            width: Dimension.dimens_device_width,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                top: Dimension.dimens_20,
                left: Dimension.dimens_16,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/img_news_home_test.png',
                    ),
                    const SizedBox(height: Dimension.dimens_12),
                    TextBase.colorBlackMedium(
                      text:
                          'Atletico Madrid - Real Madrid: Predictions, Odds, Preview',
                      fontSize: TextFontSize.dimens_16,
                    ),
                    const SizedBox(height: Dimension.dimens_14),
                    TextBase.colorBlack(
                      text: 'NEWS | NOTA DE PRENSA',
                      fontSize: TextFontSize.dimens_12,
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) =>
                  const SizedBox(width: Dimension.dimens_12),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
