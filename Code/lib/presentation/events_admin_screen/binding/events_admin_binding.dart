import '../controller/events_admin_controller.dart';
import 'package:get/get.dart';

class EventsAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventsAdminController());
  }
}
