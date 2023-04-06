import 'package:get/get.dart';
import 'package:herotask/config/route_name.dart';

class InitialController extends GetxController {
  @override
  void onReady() {
    LoadingHome();
    super.onReady();
  }

  void LoadingHome() async {
    //splash screen show time
    await Future.delayed(const Duration(seconds: 2));
    //redirect HomePage Route after 2 seconds
    print('-------------Login Route--------------');
    Get.offAllNamed(RoutesName.login);
  }
}
