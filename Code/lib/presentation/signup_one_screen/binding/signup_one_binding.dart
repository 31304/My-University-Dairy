import '../controller/signup_one_controller.dart';
import 'package:get/get.dart';

class SignupOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupOneController());
  }
}
