import 'package:euro_app_24/models/index.dart';
import 'package:euro_app_24/models/response/news.dart';

import 'package:euro_app_24/repositories/new/news_repository.dart';

import 'package:get/get.dart';

import '../../../core/base/base_result.dart';
import '../../../core/enum/result_type.dart';

class NewsController extends GetxController {
  NewsController({required this.newsRepository});
  NewsRepository newsRepository;

  final Rx<List<BaseResult<News>>> _newsResponse = Rx([]);
  List<BaseResult<News>> get newResponse => _newsResponse.value;
  final RxBool _isLoading = true.obs;
  bool get isLoading => _isLoading.value;
  int count = 0;
  @override
  void onInit() {
    getNews();

    super.onInit();
  }

  Future<void> getMoreNews() async {
    BaseResult<News> data = await newsRepository
        .getNews('', {'format': 'json', 'limit': 10, 'offset': count * 10});

    if (data.type == ResultType.data) {
      BaseResult<News> baseResult = BaseResult<News>(
          type: data.type, error: data.error, result: data.result);
      List<BaseResult<News>> listResult = [];
      for (int i = 0; i < _newsResponse.value.length; i++) {
        listResult.add(_newsResponse.value[i]);
      }
      listResult.add(baseResult);
      _newsResponse.value = listResult;
    }
    count += 1;
  }

  Future<void> getNews() async {
    BaseResult<News> data =
        await newsRepository.getNews('', {'format': 'json'});

    if (data.type == ResultType.data) {
      BaseResult<News> baseResult = BaseResult<News>(
          type: data.type, error: data.error, result: data.result);
      List<BaseResult<News>> listResult = [baseResult];
      _newsResponse.value = listResult;
    }
    count += 1;
    _isLoading(false);
  }
}
