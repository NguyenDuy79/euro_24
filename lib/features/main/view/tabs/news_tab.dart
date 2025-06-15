import 'dart:developer';

import 'package:euro_app_24/features/main/view/widgets/skeleton/home_tab/news_tab_skeleton.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import '../../../../core/app/index.dart';
import '../../../../routes/index.dart';
import '../../../../ui/widgets/index.dart';
import '../../controller/news_controller.dart';
import '../widgets/news_tab/index.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsTab extends GetView<NewsController> {
  const NewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    const double height = 150;
    return Column(
      children: [
        const BaseHeader.withoutLeading(
          title: 'News',
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: AppColor.white),
            child: Column(
              children: [
                _buildTabLayout(),
                Obx(() {
                  List<New> listNew = [];
                  for (int i = 0; i < controller.newResponse.length; i++) {
                    for (int j = 0;
                        j < controller.newResponse[i].result!.data!.length;
                        j++) {
                      listNew.add(controller.newResponse[i].result!.data![j]);
                    }
                  }
                  return controller.isLoading
                      ? const Expanded(child: NewsTabSkeleton())
                      : Expanded(
                          child: CustomRefreshIndicator(
                            trigger: IndicatorTrigger.trailingEdge,
                            trailingScrollIndicatorVisible: false,
                            leadingScrollIndicatorVisible: true,
                            onRefresh: () {
                              return controller.getMoreNews();
                            },
                            builder: (
                              BuildContext context,
                              Widget child,
                              IndicatorController controller,
                            ) {
                              return AnimatedBuilder(
                                  animation: controller,
                                  builder: (context, _) {
                                    final dy =
                                        controller.value.clamp(0.0, 1.25) *
                                            -(height - (height * 0.25));
                                    return Stack(
                                      children: [
                                        Transform.translate(
                                          offset: Offset(0.0, dy),
                                          child: child,
                                        ),
                                        Positioned(
                                          bottom: -height,
                                          left: 0,
                                          right: 0,
                                          height: height,
                                          child: Container(
                                            transform:
                                                Matrix4.translationValues(
                                                    0.0, dy, 0.0),
                                            padding: const EdgeInsets.only(
                                                top: Dimension.dimens_30),
                                            constraints:
                                                const BoxConstraints.expand(),
                                            child: Column(
                                              children: [
                                                if (controller.isLoading)
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: Dimension
                                                                .dimens_8),
                                                    width: Dimension.dimens_16,
                                                    height: Dimension.dimens_16,
                                                    child:
                                                        const CircularProgressIndicator(
                                                      color: AppColor.black,
                                                      strokeWidth:
                                                          Dimension.dimens_3,
                                                    ),
                                                  )
                                                else
                                                  const Icon(
                                                    Icons.keyboard_arrow_up,
                                                    color: AppColor.black,
                                                  ),
                                                Text(
                                                  controller.isLoading
                                                      ? "Fetching..."
                                                      : "Pull to fetch more",
                                                  style: const TextStyle(
                                                    color: AppColor.black,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  _buildNewsRow(index, listNew),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: Dimension.dimens_18),
                              itemCount: listNew.length,
                            ),
                          ),
                        );
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector _buildNewsRow(int index, List<New> listNew) {
    return GestureDetector(
      onTap: () async {
        //log(listNew[index].toString());
        final uri = Uri.parse(listNew[index].href!);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else {
          log('can not launch');
        }
      },
      child: NewsListRow(listNew[index].imageSrc!, listNew[index].articleTitle!,
          listNew[index].createdAt!, listNew[index].articleFooter!,
          color: AppColor.green_02BB58),
    );
  }

  Row _buildTabLayout() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: Dimension.dimens_12),
              const TextBase(
                fontSize: Dimension.dimens_14,
                color: AppColor.blue_143CDA,
                weight: FontWeight.w500,
                text: 'Latest',
              ),
              const SizedBox(height: Dimension.dimens_10),
              Container(
                height: Dimension.dimens_3,
                decoration: const BoxDecoration(
                  color: AppColor.blue_143CDA,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: Dimension.dimens_12),
              const TextBase.colorBlack(
                fontSize: Dimension.dimens_14,
                weight: FontWeight.w500,
                text: 'Institutional',
              ),
              const SizedBox(height: Dimension.dimens_12),
              Container(
                height: Dimension.dimens_1,
                decoration: const BoxDecoration(
                  color: AppColor.grey_E8E8E8,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
