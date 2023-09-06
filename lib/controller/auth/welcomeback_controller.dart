import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class WelcomeBack extends GetxController {
  goToSignIn();
  goToSignUp();
}

class WelcomeBackImp extends WelcomeBack {
  @override
  goToSignIn() async {
    Get.offNamed(AppRoute.login);
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.singUP);
  }
}
