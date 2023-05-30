import '../controller/timetable_2_teacher_controller.dart';
import 'package:get/get.dart';

class Timetable2TeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Timetable2TeacherController());
  }
}
