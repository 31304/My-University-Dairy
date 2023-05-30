import '../controller/contact_student_controller.dart';
import 'package:get/get.dart';

class ContactStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactStudentController());
  }
}
