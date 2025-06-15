import 'package:euro_app_24/models/response/round_response.dart';
import 'package:euro_app_24/network/url.dart';
import '../../core/base/base_result.dart';
import '../../core/base/index.dart';
import '../../models/request/index.dart';

abstract class RoundProvider {
  Future<BaseResult<RoundResponse>?> getRoundsBySeasonId(
    String path,
    Map<String, dynamic>? queryParameters,
  );
}

class RoundProviderImpl extends BaseProvider implements RoundProvider {
  @override
  Future<BaseResult<RoundResponse>> getRoundsBySeasonId(
    String path,
    Map<String, dynamic>? queryParameters,
  ) {
    return get<RoundResponse>(
      path,
      queryParameters: queryParameters,
      decoder: RoundResponse.fromJson,
    );
  }
}

abstract class RoundRepository {
  Future<BaseResult<RoundResponse>> getRoundsSeasonById(
    GetSeasonByIdRequest request,
    Map<String, dynamic>? queryParameters,
  );
}

class RoundRepositoryImpl extends BaseRepository<RoundProviderImpl>
    implements RoundRepository {
  RoundRepositoryImpl() : super(provider: RoundProviderImpl());

  @override
  Future<BaseResult<RoundResponse>> getRoundsSeasonById(
    GetSeasonByIdRequest request,
    Map<String, dynamic>? queryParameters,
  ) async {
    return await provider.getRoundsBySeasonId(
      '${NetworkUrl.mainPath}${NetworkUrl.getRounds(request.id)}',
      queryParameters,
    );
  }
}
