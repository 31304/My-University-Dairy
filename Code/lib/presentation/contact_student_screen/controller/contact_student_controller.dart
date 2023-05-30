import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/contact_student_screen/models/contact_student_model.dart';

class ContactStudentController extends GetxController {
  Rx<ContactStudentModel> contactStudentModelObj = ContactStudentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
