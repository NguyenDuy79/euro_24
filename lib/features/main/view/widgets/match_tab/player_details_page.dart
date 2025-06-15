import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/index.dart';
import '../../../../index.dart';
import 'index.dart';

class PlayerDetailsPage extends GetView<MatchesController> {
  const PlayerDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseHeader.withLeading(
          onClick: controller.pop,
          title: 'Cristhiran Stuani',
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: Dimension.dimens_16),
                  const PlayerDetailsBanner(),
                  const PlayerDetailsTabBar(),
                  const SizedBox(height: Dimension.dimens_8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: Dimension.dimens_3),
                    decoration: const BoxDecoration(
                      color: AppColor.grey_E8E8E8,
                    ),
                    child: const Center(
                      child: Text(
                        'BASIC INFORMATION',
                        style: TextStyle(
                          fontSize: Dimension.dimens_12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: Dimension.dimens_10),
                  _buildBasicInformationTable(),
                  const SizedBox(height: Dimension.dimens_20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimension.dimens_16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Highlight Stats',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: Dimension.dimens_18,
                            color: AppColor.black_09040C,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              'SEE ALL',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimension.dimens_12,
                                color: AppColor.blue_143CDA,
                              ),
                            ),
                            SvgPicture.asset('assets/svg/ic_arrow_down.svg'),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: Dimension.dimens_12),
                  _buildHighLightStatsTable(),
                  const SizedBox(height: Dimension.dimens_20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimension.dimens_16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Team players',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: Dimension.dimens_18,
                            color: AppColor.black_09040C,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              'SEE ALL',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Dimension.dimens_12,
                                color: AppColor.blue_143CDA,
                              ),
                            ),
                            SvgPicture.asset('assets/svg/ic_arrow_down.svg'),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: Dimension.dimens_8),
                  SizedBox(
                    width: double.infinity,
                    height: TextFontSize.dimens_120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            buildListPlayerItem(index),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: Dimension.dimens_12),
                        itemCount: 10),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  SingleChildScrollView _buildHighLightStatsTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: Dimension.dimens_16),
          SizedBox(
            width: TextFontSize.dimens_265,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: AppColor.grey_E8E8E8,
                  ),
                  child: const Center(child: Text('ATTACK')),
                ),
                buildInfoCell('TOTAL GOALS', '1'),
                buildInfoCell('HEADED GOALS', '0'),
                buildInfoCell('LEFT FOOT GOALS', '0'),
                buildInfoCell('RIGHT FOOT GOALS', '1'),
                buildInfoCell('PENALTY GOALS', '0'),
              ],
            ),
          ),
          const SizedBox(width: Dimension.dimens_16),
          SizedBox(
            width: TextFontSize.dimens_265,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: AppColor.grey_E8E8E8,
                  ),
                  child: const Center(child: Text('ATTACK')),
                ),
                buildInfoCell('TOTAL GOALS', '1'),
                buildInfoCell('HEADED GOALS', '0'),
                buildInfoCell('LEFT FOOT GOALS', '0'),
                buildInfoCell('RIGHT FOOT GOALS', '1'),
                buildInfoCell('PENALTY GOALS', '0'),
              ],
            ),
          ),
          const SizedBox(width: Dimension.dimens_16),
        ],
      ),
    );
  }

  Padding _buildBasicInformationTable() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimension.dimens_10),
      child: Column(
        children: [
          buildInfoCell('Date of birth', '12-10-1986'),
          buildInfoCell('Height', '176 cm'),
          buildInfoCell('Weight', '72 kg'),
        ],
      ),
    );
  }

  Padding buildListPlayerItem(int index) {
    return Padding(
      padding: EdgeInsets.only(left: index == 0 ? Dimension.dimens_16 : Dimension.dimens_0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  fit: BoxFit.fitWidth,
                  width: TextFontSize.dimens_76,
                  'assets/svg/ic_circle_avt_border.svg',
                ),
              ),
              Container(
                margin: const EdgeInsets.all(Dimension.dimens_8),
                alignment: Alignment.center,
                child: const CircleAvatar(
                  radius: Dimension.dimens_30,
                  backgroundImage:
                      AssetImage('assets/images/ic_circle_avt.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimension.dimens_4),
          const Text(
            'Davis L.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimension.dimens_12,
              color: AppColor.grey_747474,
            ),
          ),
        ],
      ),
    );
  }

  Container buildInfoCell(String name, String value) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey_E8E8E8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Dimension.dimens_10,
          horizontal: Dimension.dimens_14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: Dimension.dimens_12,
                color: AppColor.black_09040C,
              ),
            ),
            Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: Dimension.dimens_16,
                color: AppColor.blue_143CDA,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
