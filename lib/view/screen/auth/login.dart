import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/class/StatusOverLayout.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/core/functions/over_layout_style.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/custom_row_socialmedia.dart';
import 'package:ecommerce/view/widget/auth/custom_buttom_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:ecommerce/view/widget/auth/or_divider.dart';
import 'package:ecommerce/view/widget/auth/text_signup.dart';
import 'package:ecommerce/view/widget/background_body.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    overLayoutStyle(style: StatusLayout.light);
    Get.put(LoginControllerImp());
    return Scaffold(
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: BackgroundBody(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextTitleAuth(
                      text: "3".tr,
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
                            CustomTextBodyAuth(text: "5".tr),
                            const SizedBox(height: 50),

                            // Form Email
                            CustomTextFormAuth(
                              mycontroller: controller.email,
                              typeKeyboard: 'email',
                              valid: (val) {
                                return validInput(
                                    val: val!, min: 5, max: 100, type: "email");
                              },
                              hinttext: '6'.tr,
                              labeltext: '7'.tr,
                              iconData: Icons.email_outlined,
                            ),
                            const SizedBox(height: 10),

                            //Form Password
                            CustomTextFormAuth(
                              mycontroller: controller.password,
                              typeKeyboard: "text",
                              obscureText: controller.isShowPassword,
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
                              onTapIconSuffix: () {
                                controller.showPassword();
                              },
                            ),
                            //Forget Password
                            InkWell(
                                onTap: () {
                                  controller.goToForgetPassword();
                                },
                                child: Text(
                                  "10".tr,
                                  textAlign: TextAlign.end,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                )),
                            //Buttom SignIn
                            CustomButtomAuth(
                              buttomColor: AppColor.gradientOne,
                              buttomColorTwo: AppColor.gradientTow,
                              textColor: Colors.white,
                              text: "13".tr,
                              onPressed: () {
                                controller.login();
                              },
                            ),
                            const SizedBox(height: 30),
                            //Buttom Sign Up
                            CustomTextSignUpOrSingIn(
                              textone: "11".tr,
                              texttwo: "12".tr,
                              onTap: () {
                                controller.goToSignUp();
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const OrDivider(),

                            CustomRowSocialMedia(
                              onPressFacebook: (){if (kDebugMode) {
                                print("face");
                              }},
                              onPressTwitter: (){if (kDebugMode) {
                                print("twitter");
                              }},
                              onPressGoogle: (){if (kDebugMode) {
                                print("goole");
                              }},
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
