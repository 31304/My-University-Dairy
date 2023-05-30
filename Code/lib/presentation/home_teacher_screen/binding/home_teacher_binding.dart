import '../controller/home_teacher_controller.dart';
import 'package:get/get.dart';

class HomeTeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeTeacherController());
  }
}
