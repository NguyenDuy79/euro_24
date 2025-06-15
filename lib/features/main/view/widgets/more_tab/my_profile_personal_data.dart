

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/index.dart';

class MyProfilePersonalData extends StatelessWidget {
  const MyProfilePersonalData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimension.dimens_24),
          const TextBase.colorBlack(
            text: 'REQUIRED PERSONAL DATA',
            fontSize: Dimension.dimens_16,
            weight: FontWeight.w800,
          ),
          TextFormField(
            decoration: const InputDecoration(
              isDense: true,
              labelText: 'Name',
              alignLabelWithHint: true,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              isDense: true,
              labelText: 'Surname',
              alignLabelWithHint: true,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              isDense: true,
              labelText: 'Label',
              alignLabelWithHint: true,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                isDense: true,
                labelText: 'Country/region of residence',
                alignLabelWithHint: true,
                suffixIcon:
                SvgPicture.asset('assets/svg/ic_arrow_down_grey.svg'),
                suffixIconConstraints: const BoxConstraints(
                  maxWidth: Dimension.dimens_24,
                )),
          ),
        ],
      ),
    );
  }
}