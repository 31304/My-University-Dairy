import '../controller/timetable_teacher_controller.dart';
import 'package:get/get.dart';

class TimetableTeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TimetableTeacherController());
  }
}
