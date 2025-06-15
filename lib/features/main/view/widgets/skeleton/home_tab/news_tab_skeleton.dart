import 'package:flutter/widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../../core/app/index.dart';
import '../../../../../../ui/widgets/base_widgets/index.dart';

class NewsTabSkeleton extends StatelessWidget {
  const NewsTabSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          left: Dimension.dimens_16,
          top: Dimension.dimens_23,
        ),
        shrinkWrap: true,
        itemBuilder: (context, index) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 16),
            Image.asset(
              'assets/images/bg_news_image.png',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: AppColor.green_02BB58,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimension.dimens_6,
                        vertical: Dimension.dimens_4),
                    child: const TextBase.colorWhite(
                      text: 'Sep 07, 2024',
                      fontSize: 8,
                      height: 0,
                      align: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: TextBase(
                      fontSize: 14,
                      color: AppColor.black,
                      weight: FontWeight.w500,
                      text:
                          'Football transfer rumours: Man Utd players expect Fernandes exit',
                      height: 18 / 14,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextBase(
                    fontSize: 10,
                    color: Color(0xFF747474),
                    weight: FontWeight.w400,
                    text: 'Braden Chalker |May 13',
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
          ],
        ),
        separatorBuilder: (context, index) =>
            const SizedBox(height: Dimension.dimens_20),
        itemCount: 7,
      ),
    );
  }
}
