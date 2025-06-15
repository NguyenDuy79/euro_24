import 'package:euro_app_24/features/index.dart';
import 'package:euro_app_24/features/main/view/tabs/more_tab.dart';
import 'package:euro_app_24/features/main/view/widgets/match_tab/index.dart';
import 'package:euro_app_24/features/main/view/widgets/news_tab/index.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NestedNavigatorPage extends StatelessWidget {
  final NestedNavigatorConfig config;

  const NestedNavigatorPage({super.key, required this.config});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(config.id),
      initialRoute: config.initialRoute,
      onGenerateRoute: (settings) {
        GetPageRoute route;
        switch (settings.name) {
          case AppRoutes.playerDetailsPage:
            route = GetPageRoute(
              routeName: AppRoutes.playerDetailsPage,
              transition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              page: () => const PlayerDetailsPage(),
            );
            break;
          case AppRoutes.matchTab:
            route = GetPageRoute(
              routeName: AppRoutes.matchTab,
              page: () => const MatchesTab(),
            );
            break;
          case AppRoutes.matchDetailsPage:
            route = GetPageRoute(
              routeName: AppRoutes.matchDetailsPage,
              transition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              page: () => const MatchDetailsPage(),
            );
            break;
          case AppRoutes.newsTab:
            route = GetPageRoute(
              routeName: AppRoutes.matchTab,
              transition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              page: () => const NewsTab(),
            );
            break;
          case AppRoutes.newsDetailsPage:
            route = GetPageRoute(
              routeName: AppRoutes.matchTab,
              transition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              page: () => const NewsDetailScreen(),
            );
            break;
          case AppRoutes.homeTab:
            route = GetPageRoute(
              routeName: AppRoutes.homeTab,
              page: () => const HomeTab(),
            );
            break;
          case AppRoutes.moreTab:
            route = GetPageRoute(
              routeName: AppRoutes.moreTab,
              transition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              page: () => const MoreTab(),
            );
            break;
          case AppRoutes.favoriteTab:
            route = GetPageRoute(
              routeName: AppRoutes.favoriteTab,
              page: () => const FavoritesTab(),
            );
            break;
          case AppRoutes.selectTeamScreen:
            route = GetPageRoute(
              routeName: AppRoutes.selectTeamScreen,
              transition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              page: () => const SelectTeamScreen(),
            );
            break;
          case AppRoutes.teamPage:
            route = GetPageRoute(
              routeName: AppRoutes.moreTab,
              transition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              page: () => const TeamsPage(),
            );
            break;
          case AppRoutes.teamDetailsPage:
            route = GetPageRoute(
              routeName: AppRoutes.teamDetailsPage,
              transition: Transition.cupertino,
              transitionDuration: const Duration(milliseconds: 500),
              page: () =>  const TeamDetailsPage(),
            );
            break;

          default:
            route = GetPageRoute(
              routeName: AppRoutes.matchTab,
              page: () => const MatchesTab(),
            );
            break;
        }
        return route;
      },
    );
  }
}
