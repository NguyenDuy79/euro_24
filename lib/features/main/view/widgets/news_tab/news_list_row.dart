import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../../core/app/index.dart';
import '../../../../../ui/widgets/index.dart';

class NewsListRow extends StatelessWidget {
  final Color? color;
  final String image;
  final String title;
  final String time;
  final String footer;
  const NewsListRow(
    this.image,
    this.title,
    this.time,
    this.footer, {
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 16),
        Image.network(
          image,
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
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: color,
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimension.dimens_6,
                    vertical: Dimension.dimens_4),
                child: TextBase.colorWhite(
                  text: Jiffy.parse(DateTime.parse(time).toString()).yMMMd,
                  fontSize: 8,
                  height: 0,
                  align: TextAlign.center,
                ),
              ),
              const SizedBox(height: 8),
              Center(
                  child: Text(
                title,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: Dimension.dimens_14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.black,
                  height: 18 / 14,
                  overflow: TextOverflow.ellipsis,
                ),
              )),
              const SizedBox(height: 15),
              TextBase(
                fontSize: 10,
                color: const Color(0xFF747474),
                weight: FontWeight.w400,
                text: footer.split('|')[0],
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
