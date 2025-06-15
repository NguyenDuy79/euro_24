import 'package:euro_app_24/core/app/colors.dart';
import 'package:euro_app_24/core/app/dimens.dart';
import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/ui/widgets/base_widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyProfilePage extends GetView<MoreController> {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyProfileHeader(),
            const MyProfilePersonalData(),
            const MyProfileAdditionalInfo(),
            const SizedBox(height: Dimension.dimens_28),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: Dimension.dimens_16,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(Dimension.dimens_5),
              ),
              padding: const EdgeInsets.all(Dimension.dimens_14),
              child: const Center(
                child: TextBase.colorWhite(
                  text: 'Save',
                  fontSize: Dimension.dimens_16,
                  weight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: Dimension.dimens_40),
          ],
        ),
      ),
    );
  }
}
