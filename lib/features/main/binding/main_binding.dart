import 'package:euro_app_24/core/service/index.dart';
import 'package:euro_app_24/features/main/controller/index.dart';
import 'package:euro_app_24/network/url.dart';
import 'package:euro_app_24/repositories/new/news_repository.dart';
import 'package:euro_app_24/repositories/round/round_repository.dart';
import 'package:euro_app_24/repositories/standing/standing_repository.dart';
import 'package:euro_app_24/repositories/teams/team_repository.dart';
import 'package:euro_app_24/repositories/index.dart';
import 'package:get/get.dart';
import '../../../core/service/api_new_service.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiMainService>(() => ApiMainService(NetworkUrl.baseUrl));
    Get.lazyPut<ApiNewService>(() => ApiNewService(NetworkUrl.baseNewUrl));
    Get.lazyPut<SeasonRepository>(() => SeasonRepositoryImpl());
    Get.lazyPut<TeamRepository>(() => TeamRepositoryImpl(), fenix: true);
    Get.lazyPut<TopScorerRepository>(() => TopScorerRepositoryImpl());
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<RoundRepository>(() => RoundRepositoryImpl());
    Get.lazyPut<SpandingRepository>(() => StandingRepositoryImpl());
    Get.lazyPut<NewsRepository>(() => NewsRepositoryImpl());
    Get.put<HomeController>(HomeController(
      seasonRepository: Get.find(),
      topScorerRepository: Get.find(),
    ));
    Get.lazyPut<MatchesController>(() => MatchesController(
        topScorerRepository: Get.find(),
        seasonRepository: Get.find(),
        spandingRepository: Get.find()));
    Get.lazyPut<NewsController>(
        () => NewsController(newsRepository: Get.find()));
    Get.lazyPut<FavoritesController>(
        () => FavoritesController(teamRepository: Get.find()));
    Get.lazyPut(() => MoreController(teamRepository: Get.find()), fenix: true);
  }
}
