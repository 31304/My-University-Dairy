import '../controller/signup_three_controller.dart';
import 'package:get/get.dart';

class SignupThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupThreeController());
  }
}
