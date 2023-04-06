import 'package:get/get.dart';
import 'package:herotask/controller/initialController.dart';
import 'package:herotask/controller/taskController.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(InitialController());
    Get.put(TaskDetailsController());
  }
}
