import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/notification_student_screen/models/notification_student_model.dart';

class NotificationStudentController extends GetxController {
  Rx<NotificationStudentModel> notificationStudentModelObj =
      NotificationStudentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
