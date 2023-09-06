import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/checkemail_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  StatusRequest statusRequest=StatusRequest.none;

  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  checkEmail() async{
    if (formState.currentState!.validate())
    {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(
        email: email.text,
      );
      statusRequest = handlingData(response);
      print("=================$response===============");

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verfiyCode,arguments: {
            "email":email.text
          });
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Email Not Found..!");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
    else {}
  }


  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
