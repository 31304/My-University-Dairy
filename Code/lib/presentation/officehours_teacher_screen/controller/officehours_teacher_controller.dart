import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/officehours_teacher_screen/models/officehours_teacher_model.dart';

class OfficehoursTeacherController extends GetxController {
  Rx<OfficehoursTeacherModel> officehoursTeacherModelObj =
      OfficehoursTeacherModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
