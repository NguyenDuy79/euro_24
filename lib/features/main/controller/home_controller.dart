import 'package:euro_app_24/core/app/index.dart';
import 'package:euro_app_24/core/base/base_result.dart';
import 'package:euro_app_24/core/base/index.dart';
import 'package:euro_app_24/core/enum/index.dart';
import 'package:euro_app_24/models/request/index.dart';
import 'package:euro_app_24/models/response/index.dart';
import 'package:euro_app_24/network/index.dart';
import 'package:euro_app_24/repositories/index.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  HomeController({
    required this.seasonRepository,
    required this.topScorerRepository,
  });
  final SeasonRepository seasonRepository;
  final TopScorerRepository topScorerRepository;

  // Loading value
  final RxBool _isLoading = true.obs;
  bool get isLoading => _isLoading.value;

  final RxBool _isLoadingTopScorer = true.obs;
  bool get isLoadingTopScorer => _isLoadingTopScorer.value;

  //Data response
  final Rx<BaseResult<SeasonResponse>> _seasonResponse = Rx(BaseResult.empty());
  BaseResult<SeasonResponse> get seasonResponse => _seasonResponse.value;

  final Rx<BaseResult<TopScorerResponse>> _topScorerResponse =
      Rx(BaseResult.empty());
  BaseResult<TopScorerResponse> get topScorerResponse =>
      _topScorerResponse.value;

  void init() async {
    getSeasonById();
    getTopScorerBySeasonId();
  }

  Future<void> getSeasonById() async {
    BaseResult<SeasonResponse> data =
        await seasonRepository.getSeasonById(GetSeasonByIdRequest(id: 20810), {
      NetworkUrl.apiToken: NetworkUrl.apiKey,
      NetworkUrl.include:
          '${NetworkUrl.fixture};${NetworkUrl.fixtureScore};${NetworkUrl.fixtureParticipants}',
    });

    if (data.type == ResultType.data) {
      _seasonResponse(
        _seasonResponse.value.copyWith(
          error: data.error,
          result: data.result,
          type: data.type,
        ),
      );
      _isLoading(false);
    }
  }

  Future<void> getTopScorerBySeasonId() async {
    BaseResult<TopScorerResponse> data =
        await topScorerRepository.getTopscorerBySeasonId(
      GetTopScorerBySeasonIdRequest(id: 20810),
      {
        NetworkUrl.apiToken: NetworkUrl.apiKey,
        NetworkUrl.include: NetworkUrl.player,
        NetworkUrl.filter:
            '${NetworkUrl.seasonTopscorerTypes}:${Types.goalScorers.id}'
      },
    );
    if (data.type == ResultType.data) {
      _topScorerResponse(
        _topScorerResponse.value.copyWith(
          result: data.result,
          type: data.type,
        ),
      );
      _isLoadingTopScorer(false);
    }
  }

  @override
  void onInit() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.transparent, // status bar color
      ),
    );
    init();
    super.onInit();
  }
}
