import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/timetable_student_screen/models/timetable_student_model.dart';

class TimetableStudentController extends GetxController {
  Rx<TimetableStudentModel> timetableStudentModelObj =
      TimetableStudentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
