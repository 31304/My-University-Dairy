import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/announcements_admin_screen/models/announcements_admin_model.dart';

class AnnouncementsAdminController extends GetxController {
  Rx<AnnouncementsAdminModel> announcementsAdminModelObj =
      AnnouncementsAdminModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
