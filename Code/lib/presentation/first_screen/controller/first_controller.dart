import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/first_screen/models/first_model.dart';

class FirstController extends GetxController {
  Rx<FirstModel> firstModelObj = FirstModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.signupOneScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
