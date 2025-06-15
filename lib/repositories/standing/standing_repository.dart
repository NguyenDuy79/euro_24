import 'package:euro_app_24/models/response/standing_response.dart';
import 'package:euro_app_24/network/url.dart';
import '../../core/base/base_result.dart';
import '../../core/base/index.dart';
import '../../models/request/get_round_by_id_request.dart';

abstract class StandingProvider {
  Future<BaseResult<StandingResponse>?> getStandingByRoundId(
    String path,
    Map<String, dynamic>? queryParameters,
  );
}

class StandingProviderImpl extends BaseProvider implements StandingProvider {
  @override
  Future<BaseResult<StandingResponse>> getStandingByRoundId(
    String path,
    Map<String, dynamic>? queryParameters,
  ) {
    return get<StandingResponse>(
      path,
      queryParameters: queryParameters,
      decoder: StandingResponse.fromJson,
    );
  }
}

abstract class SpandingRepository {
  Future<BaseResult<StandingResponse>> getStandingByRoundId(
    GetRoundByIdRequest request,
    Map<String, dynamic>? queryParameters,
  );
}

class StandingRepositoryImpl extends BaseRepository<StandingProviderImpl>
    implements SpandingRepository {
  StandingRepositoryImpl() : super(provider: StandingProviderImpl());

  @override
  Future<BaseResult<StandingResponse>> getStandingByRoundId(
    GetRoundByIdRequest request,
    Map<String, dynamic>? queryParameters,
  ) async {
    return await provider.getStandingByRoundId(
      '${NetworkUrl.mainPath}${NetworkUrl.getStanding(request.id)}',
      queryParameters,
    );
  }
}
