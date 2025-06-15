import 'package:euro_app_24/core/base/base_result.dart';
import 'package:euro_app_24/core/base/index.dart';
import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/models/request/index.dart';
import 'package:euro_app_24/network/url.dart';

abstract class TopScorerProvider {
  Future<BaseResult<TopScorerResponse>?> getTopscorerBySeasonId(
    String path,
    Map<String, dynamic>? queryParameters,
  );
}

class TopScorerProviderImpl extends BaseProvider implements TopScorerProvider {
  @override
  Future<BaseResult<TopScorerResponse>> getTopscorerBySeasonId(
    String path,
    Map<String, dynamic>? queryParameters,
  ) =>
      get<TopScorerResponse>(
        path,
        queryParameters: queryParameters,
        decoder: TopScorerResponse.fromJson,
      );
}

abstract class TopScorerRepository {
  Future<BaseResult<TopScorerResponse>> getTopscorerBySeasonId(
    GetTopScorerBySeasonIdRequest request,
    Map<String, dynamic>? queryParameters,
  );
}

class TopScorerRepositoryImpl extends BaseRepository<TopScorerProviderImpl>
    implements TopScorerRepository {
  TopScorerRepositoryImpl() : super(provider: TopScorerProviderImpl());

  @override
  Future<BaseResult<TopScorerResponse>> getTopscorerBySeasonId(
    GetTopScorerBySeasonIdRequest request,
    Map<String, dynamic>? queryParameters,
  ) async {
    return await provider.getTopscorerBySeasonId(
      '${NetworkUrl.mainPath}${NetworkUrl.getTopscorersBySeason(request.id)}',
      queryParameters,
    );
  }
}
