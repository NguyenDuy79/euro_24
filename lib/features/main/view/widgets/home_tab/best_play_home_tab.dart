import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class BestPlayHomeTab extends StatelessWidget {
  const BestPlayHomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: Dimension.dimens_20),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: Dimension.dimens_16,
            ),
            child: const TitleOfGroupItem(
              title: 'BEST PLAYS',
              subTitle: 'Splash ea sports',
              trailing: 'SEE ALL',
            ),
          ),
          SizedBox(
            width: Dimension.dimens_device_width,
            height: 218,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                top: Dimension.dimens_20,
                left: Dimension.dimens_16,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/images/img_best_play_test.png',
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      SizedBox(
                        width: 117,
                        child: Center(
                          child: TextBase.colorWhiteMedium(
                            text: 'Goal by Viktor Tsygankov vs. GRA',
                            align: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: Dimension.dimens_14),
                    ],
                  )
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: Dimension.dimens_8,
              ),
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
