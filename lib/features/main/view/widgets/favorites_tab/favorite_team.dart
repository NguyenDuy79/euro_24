import 'package:euro_app_24/core/app/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../ui/widgets/index.dart';

class FavoriteTeam extends StatelessWidget {
  final Function onAddClick;

  const FavoriteTeam({
    super.key,
    required this.onAddClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                onAddClick();
              },
              child: SvgPicture.asset("assets/svg/ic_add_circle_big.svg"),
            ),
            const SizedBox(height: Dimension.dimens_12),
            const TextBase.colorOtherMedium(
              text: 'Pick your\nfavorite team',
              align: TextAlign.center,
              color: AppColor.blue_143CDA,
              height: 20 / 14,
            ),
          ],
        ),
      ),
    );
  }
}
