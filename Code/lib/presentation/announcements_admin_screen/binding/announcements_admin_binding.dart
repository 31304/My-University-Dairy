import '../controller/announcements_admin_controller.dart';
import 'package:get/get.dart';

class AnnouncementsAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnnouncementsAdminController());
  }
}
