import '../controller/announcement_student_controller.dart';
import 'package:get/get.dart';

class AnnouncementStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnnouncementStudentController());
  }
}
