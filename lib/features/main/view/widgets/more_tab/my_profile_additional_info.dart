

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/index.dart';

class MyProfileAdditionalInfo extends StatelessWidget {
  const MyProfileAdditionalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimension.dimens_28),
          const TextBase.colorBlack(
            text: 'ADDITIONAL PROFILE INFORMATION',
            fontSize: Dimension.dimens_16,
            weight: FontWeight.w800,
          ),
          TextFormField(
            decoration: InputDecoration(
                isDense: true,
                labelText: 'Birth date',
                alignLabelWithHint: true,
                suffixIcon: SvgPicture.asset('assets/svg/ic_calendar_grey.svg'),
                suffixIconConstraints: const BoxConstraints(
                  maxWidth: Dimension.dimens_24,
                )),
          ),
          TextFormField(
            controller: TextEditingController()..text = 'Undefined',
            decoration: InputDecoration(
                isDense: true,
                labelText: 'Gender',
                alignLabelWithHint: true,
                suffixIcon:
                SvgPicture.asset('assets/svg/ic_arrow_down_grey.svg'),
                suffixIconConstraints: const BoxConstraints(
                  maxWidth: Dimension.dimens_24,
                )),
          ),
          TextFormField(
            controller: TextEditingController()..text = 'English',
            decoration: InputDecoration(
              isDense: true,
              labelText: 'Language',
              alignLabelWithHint: true,
              prefix: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: SvgPicture.asset('assets/svg/ic_flag_gb.svg'),
              ),
              suffixIcon: SvgPicture.asset('assets/svg/ic_arrow_down_grey.svg'),
              suffixIconConstraints: const BoxConstraints(
                maxWidth: Dimension.dimens_24,
              ),
            ),
          ),
          const SizedBox(height: Dimension.dimens_10),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/svg/ic_info_blue.svg'),
              const SizedBox(width: Dimension.dimens_4),
              const Expanded(
                child: TextBase.colorOther(
                  text:
                  'Language in whitch you will receive your communucations',
                  color: AppColor.blue_143CDA,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}