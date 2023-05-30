import '../controller/editevent_admin_controller.dart';
import 'package:get/get.dart';

class EditeventAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditeventAdminController());
  }
}
