import 'package:get/get.dart';
import 'package:herotask/config/route_name.dart';
import 'package:herotask/controller/homeController.dart';
import 'package:herotask/controller/taskController.dart';
import 'package:herotask/screen/homepage.dart';
import 'package:herotask/screen/task/taskdetails.dart';

import '../screen/congratulationScreen.dart';
import '../screen/login_screen.dart';
import '../screen/splash/splash_screen.dart';

class Approutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => SplashScreen()),
        GetPage(name: RoutesName.login, page: () => LoginPage()),
        GetPage(
            name: RoutesName.homepage,
            page: () => HomePage(),
            binding: BindingsBuilder(() {
              Get.put(HomeController());
            })),
        GetPage(
            name: RoutesName.taskdetails,
            page: () => TaskDetailsScreen(),
            binding: BindingsBuilder(() {
              Get.put(TaskDetailsController());
            })),
        GetPage(
          name: RoutesName.congratulation,
          page: () => CongratulationScreen(),
        ),
      ];
}
