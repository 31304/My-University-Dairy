import '../controller/requests_teacher_controller.dart';
import 'package:get/get.dart';

class RequestsTeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestsTeacherController());
  }
}
