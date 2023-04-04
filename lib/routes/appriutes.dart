import 'package:get/get.dart';
import 'package:herotask/config/route_name.dart';
import 'package:herotask/screen/homepage.dart';

import '../screen/splash/splash_screen.dart';

class Approutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: RoutesName.homepage, page: () => HomePage())
      ];
}
