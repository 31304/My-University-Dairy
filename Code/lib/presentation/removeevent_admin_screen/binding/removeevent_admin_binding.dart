import '../controller/removeevent_admin_controller.dart';
import 'package:get/get.dart';

class RemoveeventAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoveeventAdminController());
  }
}
