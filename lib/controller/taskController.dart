import 'package:get/get.dart';

class TaskDetailsController extends GetxController {
  int taskindex = 0;
  int taskindexstore = 0;

  @override
  void onInit() {
    taskindex = 0;
    taskindexstore = 0;
    super.onInit();
  }

  void updateindex(int i) {
    if (i <= taskindexstore) {
      taskindex = i;
    }
    update();
  }

  void onchangeindex() {
    if (taskindex < 2) {
      taskindex += 1;
      taskindexstore += 1;
    }

    update();
  }

  void backindex() {
    if (taskindex > 0) {
      taskindex -= 1;
      taskindexstore -= 1;
    }

    update();
  }
}
