import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/core/base/index.dart';
import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/features/main/view/tabs/more_tab.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MainController extends BaseController {
  // Bottom navigation
  final List<BottomNavigationBarItem> _bottomBarIconList = [
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_home.svg'),
      ),
      label: 'Home',
      activeIcon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_home_active.svg'),
      ),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_match.svg'),
      ),
      label: 'Matches',
      activeIcon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_match_active.svg'),
      ),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_favorite.svg'),
      ),
      label: 'Favorites',
      activeIcon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_favorite_active.svg'),
      ),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_news.svg'),
      ),
      label: 'News',
      activeIcon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_news_active.svg'),
      ),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_more.svg'),
      ),
      label: 'More',
      activeIcon: Padding(
        padding: const EdgeInsets.all(Dimension.dimens_6),
        child: SvgPicture.asset('assets/svg/ic_nav_more_active.svg'),
      ),
    ),
  ];

  List<BottomNavigationBarItem> get listNavigationBarItems =>
      _bottomBarIconList;

  // List tab main screen
  final List<Widget> _tabList = <Widget>[
    NestedNavigatorPage(
      config: NestedNavigatorConfig(
        id: AppRoutes.homeTabId,
        initialRoute: AppRoutes.homeTab,
      ),
    ),
    NestedNavigatorPage(
      config: NestedNavigatorConfig(
        id: AppRoutes.matchTabId,
        initialRoute: AppRoutes.matchTab,
      ),
    ),
    NestedNavigatorPage(
      config: NestedNavigatorConfig(
        id: AppRoutes.favoriteTabId,
        initialRoute: AppRoutes.favoriteTab,
      ),
    ),
    NestedNavigatorPage(
      config: NestedNavigatorConfig(
        id: AppRoutes.newsTabId,
        initialRoute: AppRoutes.newsTab,
      ),
    ),
    NestedNavigatorPage(
      config: NestedNavigatorConfig(
        id: AppRoutes.moreTabId,
        initialRoute: AppRoutes.moreTab,
      ),
    ),
  ];
  List<Widget> get tabList => _tabList;

  // Current index of tab
  final RxInt _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;

  void onChangeTab(int nextIndex) => _currentIndex(nextIndex);
}
