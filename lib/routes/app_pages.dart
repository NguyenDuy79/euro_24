import 'package:get/get.dart';

import '../features/index.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<SplashScreen>(
      name: AppRoutes.START,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      preventDuplicates: true,
    ),
    GetPage<MainScreen>(
      name: AppRoutes.MAIN,
      page: () => const MainScreen(),
      binding: MainBinding(),
      preventDuplicates: true,
    ),
  ];
}
