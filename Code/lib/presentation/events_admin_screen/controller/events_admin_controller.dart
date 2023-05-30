import 'package:sami_s_application1/core/app_export.dart';
import 'package:sami_s_application1/presentation/events_admin_screen/models/events_admin_model.dart';

class EventsAdminController extends GetxController {
  Rx<EventsAdminModel> eventsAdminModelObj = EventsAdminModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
