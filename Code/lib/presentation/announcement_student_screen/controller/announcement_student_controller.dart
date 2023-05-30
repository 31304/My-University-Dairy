import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/announcement_student_screen/models/announcement_student_model.dart';

class AnnouncementStudentController extends GetxController {
  Rx<AnnouncementStudentModel> announcementStudentModelObj =
      AnnouncementStudentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
