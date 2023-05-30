import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/events_student_screen/models/events_student_model.dart';

class EventsStudentController extends GetxController {
  Rx<EventsStudentModel> eventsStudentModelObj = EventsStudentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
