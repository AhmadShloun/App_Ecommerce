import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/verifycode_data.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode(String verfiyCode);
}

class VerfiyCodeControllerImp extends VerfiyCodeController {
  String? email;
  StatusRequest statusRequest = StatusRequest.none;
  VerifyCodeForgetPasswordData verifyCodeForgetpasswordData =
      VerifyCodeForgetPasswordData(Get.find());

  @override
  checkCode(String verfiyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeForgetpasswordData.postData(
      email: email!,
      verifycode: verfiyCode,
    );
    statusRequest = handlingData(response);
    print("=================$response===============");

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetPassword,arguments: {
          'email':email
        });
      } else {
        Get.defaultDialog(title: "Warning", middleText: "VerifyCode not correct ..!");
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
