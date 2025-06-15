import 'package:euro_app_24/models/response/news.dart';
import 'package:euro_app_24/network/index.dart';
import '../../core/base/base_result.dart';
import '../../core/base/index.dart';

abstract class NewsProvider {
  Future<BaseResult<News>?> getNews(
    String path,
    Map<String, dynamic>? queryParameters,
  );
}

class NewsProviderImpl extends BaseProvider implements NewsProvider {
  @override
  Future<BaseResult<News>> getNews(
    String path,
    Map<String, dynamic>? queryParameters,
  ) {
    return getNewsData(
      path,
      queryParameters: queryParameters,
      decoder: News.fromJson,
    );
  }
}

abstract class NewsRepository {
  Future<BaseResult<News>> getNews(
    String request,
    Map<String, dynamic>? queryParameters,
  );
}

class NewsRepositoryImpl extends BaseRepository<NewsProviderImpl>
    implements NewsRepository {
  NewsRepositoryImpl() : super(provider: NewsProviderImpl());

  @override
  Future<BaseResult<News>> getNews(
    String request,
    Map<String, dynamic>? queryParameters,
  ) async {
    return await provider.getNews(
      NetworkUrl.mainNewPath,
      queryParameters,
    );
  }
}
