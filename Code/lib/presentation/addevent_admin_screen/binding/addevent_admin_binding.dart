import '../controller/addevent_admin_controller.dart';
import 'package:get/get.dart';

class AddeventAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddeventAdminController());
  }
}
