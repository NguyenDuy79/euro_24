import 'package:euro_app_24/core/base/base_controller.dart';
import 'package:euro_app_24/core/base/base_result.dart';
import 'package:euro_app_24/core/enum/index.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/models/request/get_teams_request.dart';
import 'package:euro_app_24/network/index.dart';
import 'package:euro_app_24/repositories/teams/team_repository.dart';
import 'package:euro_app_24/routes/app_routes.dart';
import 'package:get/get.dart';

class MoreController extends BaseController {
  MoreController({required this.teamRepository});
  final TeamRepository teamRepository;

  final RxBool _isLoading = true.obs;
  bool get isLoading => _isLoading.value;

  //Data response
  final Rx<BaseResult<TeamResponse>> _teamResponse = Rx(BaseResult.empty());
  BaseResult<TeamResponse> get teamResponse => _teamResponse.value;



  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() async {
    await Future.wait([getTeams()]);
    _isLoading(false);
  }

  Future<void> getTeams() async {
    BaseResult<TeamResponse> data = await teamRepository.getTeams(GetTeamsRequest(id: 20810),{
      NetworkUrl.apiToken: NetworkUrl.apiKey,
      NetworkUrl.include:
      '${NetworkUrl.fixture};${NetworkUrl.fixtureScore};${NetworkUrl.fixtureParticipants}',
    });
    if (data.type == ResultType.data) {
      _teamResponse(
        _teamResponse.value.copyWith(
          error: data.error,
          result: data.result,
          type: data.type,
        ),
      );
    }
    print(data);
  }

  onTeamClick(Team team) {
    Get.toNamed(AppRoutes.teamDetailsPage, id: AppRoutes.moreTabId);
  }
}