import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/home_teacher_screen/models/home_teacher_model.dart';

class HomeTeacherController extends GetxController {
  Rx<HomeTeacherModel> homeTeacherModelObj = HomeTeacherModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
