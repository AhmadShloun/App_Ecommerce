import 'dart:async';

import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/data/datasource/remote/auth/verfiycodesignup_data.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  checkCode();

  goToSuccessSignUp(String verificationCode);

  resendCode();

  startCountdown();
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
  String? email;
  VerfiyCodeSignUpData verfiyCodeSignUpData = VerfiyCodeSignUpData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  List data = [];

  late Timer timer;

  int countdown = 30;
  bool isButtonEnabled = true;


  @override
  void startCountdown() {
    countdown = 30;
    isButtonEnabled = false;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        countdown--;
      } else {
        isButtonEnabled = true;
        timer.cancel();
      }
      update();
    });
  }

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
  resendCode() {
    verfiyCodeSignUpData.resendData(
      email: email!,
    );
    startCountdown();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
