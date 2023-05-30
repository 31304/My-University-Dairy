import '../controller/home_student_controller.dart';
import 'package:get/get.dart';

class HomeStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeStudentController());
  }
}
