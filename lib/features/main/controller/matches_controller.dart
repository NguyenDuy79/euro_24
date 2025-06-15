import 'dart:developer';

import 'package:euro_app_24/models/request/get_round_by_id_request.dart';

import 'package:euro_app_24/repositories/standing/standing_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/app/index.dart';
import '../../../core/base/base_controller.dart';
import '../../../core/base/base_result.dart';
import '../../../core/enum/index.dart';
import '../../../models/request/index.dart';
import '../../../models/response/index.dart';

import '../../../network/index.dart';
import '../../../repositories/index.dart';
import '../../../routes/index.dart';

class MatchesController extends BaseController {
  // Current index of tab
  final TopScorerRepository topScorerRepository;
  final SeasonRepository seasonRepository;
  final SpandingRepository spandingRepository;
  MatchesController(
      {required this.topScorerRepository,
      required this.seasonRepository,
      required this.spandingRepository});
  final RxInt _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;

  final RxInt _selectedChip = 0.obs;
  int get selectedChip => _selectedChip.value;
  final RxBool _isLoadingTopScorer = true.obs;
  bool get isLoadingTopScorer => _isLoadingTopScorer.value;
  final RxBool _isLoadingSpanding = true.obs;
  bool get isLoadingSpanding => _isLoadingSpanding.value;
  final Rx<BaseResult<SeasonResponse>> _seasonResponse = Rx(BaseResult.empty());
  Rx<BaseResult<SeasonResponse>> get seasonResponse => _seasonResponse;
  final Rx<BaseResult<TopScorerResponse>> _topScorerResponse =
      Rx(BaseResult.empty());

  BaseResult<TopScorerResponse> get topScorerResponse =>
      _topScorerResponse.value;
  final Rx<BaseResult<StandingResponse>> _spandingResponse =
      Rx(BaseResult.empty());

  List<List<Standing>> _listSpandingGroup = [];
  List<List<Standing>> get listSpandingGroup => _listSpandingGroup;
  void onChangeTab(int nextIndex) => _currentIndex(nextIndex);

  @override
  void pop() async {
    await Get.keys[AppRoutes.matchTabId]!.currentState!.maybePop();
    super.pop();
  }

  void init() async {
    getTopScorerBySeasonId();
    getRoundAndGroupBySeasonId().then((value) {
      if (_seasonResponse.value != BaseResult.empty()) {
        getSpandingByRoundId();
      }
    });
  }

  TableCell buildTitleCell(String name, Color color, FontWeight? fontWeight) {
    return TableCell(
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              color: color, fontWeight: fontWeight ?? FontWeight.w500),
        ),
      ),
    );
  }

  Future<void> getTopScorerBySeasonId() async {
    BaseResult<TopScorerResponse> data =
        await topScorerRepository.getTopscorerBySeasonId(
      GetTopScorerBySeasonIdRequest(id: 20810),
      {
        NetworkUrl.apiToken: NetworkUrl.apiKey,
        NetworkUrl.include: '${NetworkUrl.player};${NetworkUrl.playerCountry}',
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

  Future<void> getRoundAndGroupBySeasonId() async {
    BaseResult<SeasonResponse> data = await seasonRepository.getSeasonById(
      GetSeasonByIdRequest(id: 20810),
      {
        NetworkUrl.apiToken: NetworkUrl.apiKey,
        NetworkUrl.include: '${NetworkUrl.groups};${NetworkUrl.round}'
      },
    );

    if (data.type == ResultType.data) {
      _seasonResponse(
          _seasonResponse.value.copyWith(result: data.result, type: data.type));
    }
  }

  Future<void> getSpandingByRoundId() async {
    int currentRound = 0;
    for (int i = 0;
        i < _seasonResponse.value.result!.data!.rounds!.length;
        i++) {
      if (int.parse(_seasonResponse.value.result!.data!.rounds![i].name!) >
          int.parse(_seasonResponse
              .value.result!.data!.rounds![currentRound].name!)) {
        currentRound = i;
      }
    }
    log(_seasonResponse.value.result!.data!.rounds![currentRound].id!
        .toString());
    BaseResult<StandingResponse> data =
        await spandingRepository.getStandingByRoundId(
      GetRoundByIdRequest(
          id: _seasonResponse.value.result!.data!.rounds![currentRound].id!),
      {
        NetworkUrl.apiToken: NetworkUrl.apiKey,
        NetworkUrl.include:
            '${NetworkUrl.group};${NetworkUrl.participant};${NetworkUrl.details}',
        NetworkUrl.filter:
            '${NetworkUrl.standingDetailTypes}:${Types.allWins.id},${Types.allDraw.id},${Types.allLost.id},${Types.allGoalsFor.id},${Types.allGoalsAgainst.id},${Types.goalsDifference.id}'
      },
    );
    if (data.type == ResultType.data) {
      _spandingResponse(_spandingResponse.value
          .copyWith(result: data.result, type: data.type));
      _listSpandingGroup = _listGroupSpanding(
          _spandingResponse.value.result!.data!,
          _seasonResponse.value.result!.data!.groups!);
    }

    _isLoadingSpanding(false);
  }

  List<List<Standing>> _listGroupSpanding(
      List<Standing> allSpanding, List<Group> listGroupName) {
    List<List<Standing>> result = [];
    for (Group groupItem in listGroupName) {
      List<Standing> newList = [];
      for (Standing item in allSpanding) {
        if (groupItem.name == item.group!.name) {
          newList.add(item);
        }
      }

      newList.sort((a, b) => b.points!.compareTo(a.points!));

      result.add(newList);
    }

    return result;
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
