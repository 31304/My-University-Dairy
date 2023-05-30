import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/home_admin_screen/models/home_admin_model.dart';

class HomeAdminController extends GetxController {
  Rx<HomeAdminModel> homeAdminModelObj = HomeAdminModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
