import '../controller/signup_four_controller.dart';
import 'package:get/get.dart';

class SignupFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupFourController());
  }
}
