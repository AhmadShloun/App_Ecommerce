import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/data/datasource/remote/auth/verfiycodesignup_data.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  checkCode();

  goToSuccessSignUp(String verificationCode);
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  String? email;
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  List data = [];

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(String verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();
    print("test:$verificationCode");
    var response = await verfiyCodeSignUpData.postData(
      email: email!,
      verifycode: verificationCode,
    );
    statusRequest = handlingData(response);
    print("=================$response===============");
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSingUp);
      } else {
        Get.defaultDialog(title: "Warning", middleText: response['message']);
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
