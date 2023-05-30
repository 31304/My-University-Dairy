import '../controller/officehours_teacher_controller.dart';
import 'package:get/get.dart';

class OfficehoursTeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfficehoursTeacherController());
  }
}
