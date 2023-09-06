import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/custom_buttom_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:ecommerce/view/widget/auth/text_signup.dart';
import 'package:ecommerce/view/widget/background_body.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUP extends StatelessWidget {
  const SingUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp cc = Get.put(SignUpControllerImp());

    return Scaffold(
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: BackgroundBody(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextTitleAuth(
                      text: "21".tr,
                      textColor: AppColor.white,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: MainBody(
                      child: Form(
                        key: controller.formState,
                        child: ListView(
                          children: [
                            //Form username
                            CustomTextFormAuth(
                              mycontroller: controller.username,
                              typeKeyboard: "text",
                              valid: (val) {
                                return validInput(
                                    val: val!,
                                    min: 3,
                                    max: 30,
                                    type: "username");
                              },
                              hinttext: '23'.tr,
                              labeltext: '22'.tr,
                              iconData: Icons.person_2_outlined,
                            ),
                            //Form Email
                            CustomTextFormAuth(
                              mycontroller: controller.email,
                              typeKeyboard: "email",
                              valid: (val) {
                                return validInput(
                                    val: val!, min: 5, max: 100, type: "email");
                              },
                              hinttext: '6'.tr,
                              labeltext: '24'.tr,
                              iconData: Icons.email_outlined,
                            ),
                            //Form Phone
                            CustomTextFormAuth(
                              mycontroller: controller.phone,
                              typeKeyboard: "number",
                              valid: (val) {
                                return validInput(
                                    val: val!, min: 7, max: 15, type: "phone");
                              },
                              hinttext: '26'.tr,
                              labeltext: '25'.tr,
                              iconData: Icons.phone_android_outlined,
                            ),
                            //Form Password
                            CustomTextFormAuth(
                              mycontroller: controller.password,
                              typeKeyboard: "text",
                              obscureText: controller.isShowPassword,
                              onTapIconSuffix: () {
                                controller.showPassword();
                              },
                              valid: (val) {
                                return validInput(
                                    val: val!,
                                    min: 8,
                                    max: 30,
                                    type: "password");
                              },
                              hinttext: '8'.tr,
                              labeltext: '9'.tr,
                              iconData: controller.isShowPassword
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off,
                            ),

                            //Buttom Sign Up
                            CustomButtomAuth(
                                buttomColor: AppColor.gradientOne,
                                buttomColorTwo: AppColor.gradientTow,
                                // testSize: 16,
                                textColor: AppColor.white,
                                text: "4".tr,
                                onPressed: () {
                                  controller.signUp();
                                }),
                            const SizedBox(height: 30),

                            //Buttom Sign In
                            CustomTextSignUpOrSingIn(
                              textone: "27".tr,
                              texttwo: "13".tr,
                              onTap: () {
                                controller.goToSignIn();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
