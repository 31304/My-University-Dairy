import '../controller/viewevent_admin_controller.dart';
import 'package:get/get.dart';

class VieweventAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VieweventAdminController());
  }
}
