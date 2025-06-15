import 'package:euro_app_24/models/request/get_teams_request.dart';

import '../../core/base/base_result.dart';
import '../../core/base/index.dart';
import '../../models/index.dart';
import '../../network/index.dart';

abstract class TeamRepository {
  Future<BaseResult<TeamResponse>> getTeams(
      GetTeamsRequest request,
      Map<String, dynamic>? queryParameters,
      );
}

class TeamRepositoryImpl extends BaseRepository<TeamProviderImpl>
    implements TeamRepository {
  TeamRepositoryImpl() : super(provider: TeamProviderImpl());

  @override
  Future<BaseResult<TeamResponse>> getTeams(
      GetTeamsRequest request,
      Map<String, dynamic>? queryParameters,
      ) async {
    return await provider.getTeams(
      '${NetworkUrl.mainPath}${NetworkUrl.getTeams(request.id)}',
      queryParameters,
    );
  }
}

abstract class TeamProvider {
  Future<BaseResult<TeamResponse>?> getTeams(
      String path,
      Map<String, dynamic>? queryParameters,
      );
}

class TeamProviderImpl extends BaseProvider implements TeamProvider {
  @override
  Future<BaseResult<TeamResponse>> getTeams(
      String path,
      Map<String, dynamic>? queryParameters,
      ) =>
      get<TeamResponse>(
        path,
        queryParameters: queryParameters,
        decoder: TeamResponse.fromJson,
      );
}