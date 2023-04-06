import 'package:get/get.dart';

class HomeController extends GetxController {
  int pageindex = 0;

  @override
  void onReady() {
    pageindex = 0;
    super.onReady();
  }

  void pageChangeIndex(int i) {
    pageindex = i;
    update();
  }
}
