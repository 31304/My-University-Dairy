import '../controller/announcements_2_admin_controller.dart';
import 'package:get/get.dart';

class Announcements2AdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Announcements2AdminController());
  }
}
