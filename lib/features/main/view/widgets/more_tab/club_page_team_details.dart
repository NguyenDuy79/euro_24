import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/ui/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClubPageTeamDetails extends StatelessWidget {
  const ClubPageTeamDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimension.dimens_16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: Dimension.dimens_20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: Dimension.dimens_48,
                  width: Dimension.dimens_48,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.grey_E8E8E8),
                  child: Image.asset('assets/images/ic_avatar_none.png'),
                ),
                const SizedBox(
                  width: Dimension.dimens_13,
                ),
                const TextBase(
                  text: 'Florentino Pérez Rodríguez',
                  fontSize: TextFontSize.dimens_16,
                  weight: FontWeight.w500,
                  color: AppColor.black,
                )
              ],
            ),
            const SizedBox(
              height: Dimension.dimens_20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: Dimension.dimens_27,
              child: const TextBase(
                text: 'STADIUM',
                color: AppColor.black,
                fontSize: TextFontSize.dimens_18,
                weight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: Dimension.dimens_25,
            ),
            Container(
              margin: const EdgeInsets.only(left: Dimension.dimens_18),
              height:
                  (Dimension.dimens_device_width - Dimension.dimens_34 * 2) *
                      196 /
                      322,
              width: Dimension.dimens_device_width - Dimension.dimens_34 * 2,
              child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/959a/6f99/40fac1118d87c30f05fa1d54dca9f00e?Expires=1712534400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ihDvCa-2WX7pGE-KYPwSFwGmIjR5lWQhojlkukCf7fc8NDJBp31zf653O1KtrtcGrpB-FLUMzHsUm9jGvtRaZ45cKTWFXkS1Jui5jdlFwmLyIQ4QRlu5w3tCcQK2nOeCGIG8DA2o2u0ThBZYzXt9vmTWs6FZEfLz7cYAMGht0DtJuGht6vNvHLF-GYy20bM1m1MUrrAItAWmj2VqmiiUCUW3mBN3NO8JAx-NM5HeDIWyO8SqvVDaUvcSVgYtDrT4dyhEntEe~4404RzMa4oywZukpAGrHbGhjxv4GrkXFzC5ZCrDNUREU6TwxoMnEHisNggpPkthnYFlRVg4Q846RA__'),
            ),
            const SizedBox(
              height: Dimension.dimens_11,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: Dimension.dimens_24,
              child: const TextBase(
                  fontSize: TextFontSize.dimens_16,
                  color: AppColor.black,
                  weight: FontWeight.w500,
                  text: 'Estadio Santiago Bernabéu'),
            ),
            Container(
                alignment: Alignment.centerLeft,
                height: Dimension.dimens_20,
                child: const TextBase(
                    fontSize: TextFontSize.dimens_15,
                    color: AppColor.grey_979797,
                    weight: FontWeight.w300,
                    text: 'Estadio Santiago Bernabéu. Calle Concha Espina')),
            Container(
                alignment: Alignment.centerLeft,
                height: Dimension.dimens_20,
                child: const TextBase(
                    fontSize: TextFontSize.dimens_15,
                    color: AppColor.grey_979797,
                    weight: FontWeight.w300,
                    text: 's/n.28036 Madrid')),
            const SizedBox(
              height: Dimension.dimens_16,
            ),
            const Row(
              children: [
                SizedBox(
                    height: Dimension.dimens_24,
                    width: Dimension.dimens_24,
                    child: CircleAvatar(
                      backgroundColor: AppColor.black,
                    )),
                const SizedBox(
                  width: Dimension.dimens_16,
                ),
                SizedBox(
                    height: Dimension.dimens_24,
                    width: Dimension.dimens_24,
                    child: CircleAvatar(
                      backgroundColor: AppColor.black,
                    )),
                const SizedBox(
                  width: Dimension.dimens_16,
                ),
                SizedBox(
                    height: Dimension.dimens_24,
                    width: Dimension.dimens_24,
                    child: CircleAvatar(
                      backgroundColor: AppColor.black,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
