import '../controller/notification_student_controller.dart';
import 'package:get/get.dart';

class NotificationStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationStudentController());
  }
}
