import '../controller/events_student_controller.dart';
import 'package:get/get.dart';

class EventsStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventsStudentController());
  }
}
