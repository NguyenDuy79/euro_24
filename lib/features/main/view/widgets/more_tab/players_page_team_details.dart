import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/ui/widgets/index.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlayersPageTeamDetails extends StatelessWidget {
  const PlayersPageTeamDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(Dimension.dimens_0),
        itemCount: positionsInFoodballTeam.length,
        itemBuilder: (context, index) => SizedBox(
              height: Dimension.dimens_48 + Dimension.dimens_73 * 5,
              child: Column(
                children: [
                  const SizedBox(
                    height: Dimension.dimens_18,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: Dimension.dimens_26,
                    width: double.infinity,
                    color: AppColor.grey_E8E8E8,
                    child: TextBase(
                      color: AppColor.black,
                      fontSize: TextFontSize.dimens_12,
                      text: positionsInFoodballTeam[index],
                      weight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: Dimension.dimens_4,
                  ),
                  Expanded(
                      child: ListView.builder(
                    padding: const EdgeInsets.all(Dimension.dimens_0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, indexPostion) => Column(
                      children: [
                        const SizedBox(
                          height: Dimension.dimens_12,
                        ),
                        Container(
                          padding:
                              const EdgeInsets.only(left: Dimension.dimens_16),
                          height: Dimension.dimens_50,
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  width: Dimension.dimens_28,
                                  child: TextBase.colorOtherMedium(
                                      text: (indexPostion + 1).toString(),
                                      color: AppColor.blue_143CDA)),
                              SizedBox(
                                height: Dimension.dimens_50,
                                width: Dimension.dimens_50,
                                child: CircleAvatar(
                                    backgroundColor: AppColor.white,
                                    child: Image.asset(
                                        'assets/images/ic_circle_avt.png')),
                              ),
                              const SizedBox(
                                width: Dimension.dimens_12,
                              ),
                              const TextBase.colorBlackMedium(
                                  text: 'Álvaro morata')
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: Dimension.dimens_10,
                        ),
                        const Divider(
                          height: Dimension.dimens_1,
                          color: AppColor.grey_E8E8E8,
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ));
  }
}

List<String> positionsInFoodballTeam = [
  'GOALKEEPERS',
  'DEFENDERS',
  'MIDFIELDERS',
  'FORWARDS'
];
