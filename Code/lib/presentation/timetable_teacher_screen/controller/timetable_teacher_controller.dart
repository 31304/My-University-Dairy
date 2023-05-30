import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/timetable_teacher_screen/models/timetable_teacher_model.dart';

class TimetableTeacherController extends GetxController {
  Rx<TimetableTeacherModel> timetableTeacherModelObj =
      TimetableTeacherModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
