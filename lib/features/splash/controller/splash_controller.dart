import 'package:flutter/services.dart';

import '../../../core/base/index.dart';

class SplashController extends BaseController {
  @override
  void onInit() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.onInit();
  }
}
