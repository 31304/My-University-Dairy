import '../controller/contact_2_student_controller.dart';
import 'package:get/get.dart';

class Contact2StudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Contact2StudentController());
  }
}
