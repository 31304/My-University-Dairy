import '../controller/timetable_2_student_controller.dart';
import 'package:get/get.dart';

class Timetable2StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Timetable2StudentController());
  }
}
