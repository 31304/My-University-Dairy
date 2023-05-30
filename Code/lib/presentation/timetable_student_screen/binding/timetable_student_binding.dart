import '../controller/timetable_student_controller.dart';
import 'package:get/get.dart';

class TimetableStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TimetableStudentController());
  }
}
