import 'package:euro_app_24/core/base/base_result.dart';
import 'package:euro_app_24/core/base/index.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/models/request/get_season_by_id_request.dart';
import 'package:euro_app_24/network/url.dart';

abstract class SeasonProvider {
  Future<BaseResult<SeasonResponse>?> getSeasonById(
    String path,
    Map<String, dynamic>? queryParameters,
  );
}

class SeasonProviderImpl extends BaseProvider implements SeasonProvider {
  @override
  Future<BaseResult<SeasonResponse>> getSeasonById(
    String path,
    Map<String, dynamic>? queryParameters,
  ) {
    return get<SeasonResponse>(
      path,
      queryParameters: queryParameters,
      decoder: SeasonResponse.fromJson,
    );
  }
}

abstract class SeasonRepository {
  Future<BaseResult<SeasonResponse>> getSeasonById(
    GetSeasonByIdRequest request,
    Map<String, dynamic>? queryParameters,
  );
}

class SeasonRepositoryImpl extends BaseRepository<SeasonProviderImpl>
    implements SeasonRepository {
  SeasonRepositoryImpl() : super(provider: SeasonProviderImpl());

  @override
  Future<BaseResult<SeasonResponse>> getSeasonById(
    GetSeasonByIdRequest request,
    Map<String, dynamic>? queryParameters,
  ) async {
    return await provider.getSeasonById(
      '${NetworkUrl.mainPath}${NetworkUrl.getSeason(request.id)}',
      queryParameters,
    );
  }
}
