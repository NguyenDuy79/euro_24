

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/app/index.dart';

class PlayerDetailsBanner extends StatelessWidget {
  const PlayerDetailsBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Dimension.dimens_14, top: Dimension.dimens_2),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/bg_ranking_player.png',
            height: Dimension.dimens_224,
            fit: BoxFit.fitHeight,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "3",
                    style: TextStyle(
                      fontSize: Dimension.dimens_36,
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey_858585,
                      fontFamily: 'Barbaro',
                      height: 1,
                    ),
                  ),
                  SizedBox(width: Dimension.dimens_8),
                  Text(
                    "CRISTHIAN STUANI",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: Dimension.dimens_24,
                      color: AppColor.black_09040C,
                      fontFamily: 'Impact',
                      height: 1,
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/ic_gfc.png',
                    width: Dimension.dimens_28,
                    fit: BoxFit.fitWidth,
                  ),
                  const Text(
                    'GIRONA FÚTBOL CLUB SAD',
                    style: TextStyle(
                      color: AppColor.black_09040C,
                      fontSize: Dimension.dimens_14,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Dimension.dimens_100),
              const Text(
                'MIDFIELDER',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Dimension.dimens_18,
                  color: AppColor.black_09040C,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                      'assets/svg/ic_flag_spain.svg'),
                  const SizedBox(width: Dimension.dimens_3),
                  const Text(
                    'Spain',
                    style: TextStyle(
                      fontSize: Dimension.dimens_14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.black_09040C,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}