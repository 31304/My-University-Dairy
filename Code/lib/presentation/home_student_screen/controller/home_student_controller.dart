import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/home_student_screen/models/home_student_model.dart';

class HomeStudentController extends GetxController {
  Rx<HomeStudentModel> homeStudentModelObj = HomeStudentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
