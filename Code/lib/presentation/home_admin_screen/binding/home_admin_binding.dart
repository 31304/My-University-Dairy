import '../controller/home_admin_controller.dart';
import 'package:get/get.dart';

class HomeAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeAdminController());
  }
}
