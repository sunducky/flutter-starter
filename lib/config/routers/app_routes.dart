import 'package:get/route_manager.dart';
import 'package:sample/app/sample/screens/screen_sample.dart';
import 'package:sample/app/sample/screens/screen_sample_2.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const SampleScreen(),
    ),
    GetPage(
      name: Routes.page2,
      page: () => const SampleScreenTwo(),
    ),
  ];
}

class Routes {
  static const home = '/';
  static const page2 = '/wee';
}
