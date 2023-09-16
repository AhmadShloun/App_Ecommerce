import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/auth/login_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();

  goToSignUp();

  goToForgetPassword();

  showPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isShowPassword = true;

  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());

  MyServices myServices = Get.find();

  @override
  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }

  @override
  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(
        email: email.text,
        password: password.text,
      );
      statusRequest = handlingData(response);
      print("=================$response===============");
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          if(response['data']['users_approve'] == "1"){
            myServices.sharedPreferences.setString("id", response['data']['users_id']);
            myServices.sharedPreferences.setString("username", response['data']['users_name']);
            myServices.sharedPreferences.setString("email", response['data']['users_email']);
            myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
            myServices.sharedPreferences.setString("step", "2");
            Get.offNamed(AppRoute.homepage);
          }
          else{
            Get.toNamed(AppRoute.verfiyCodeSignUp,arguments: {'email':email.text});
          }
        } else {
          Get.defaultDialog(title: "Warning", middleText: response['status']);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.singUP);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
      String? token = value;
    });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
