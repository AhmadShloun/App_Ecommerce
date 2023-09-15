import 'package:ecommerce/controller/auth/forgetpassword/resetpassword_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/custom_buttom_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_form_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:ecommerce/view/widget/background_body.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: BackgroundBody(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: CustomTextTitleAuth(
                      text: "38".tr, textColor: AppColor.white),
                ),
                Expanded(
                  flex: 3,
                  child: MainBody(
                    child: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          CustomTextBodyAuth(text: "39".tr),
                          const SizedBox(height: 30),
                          CustomTextFormAuth(
                            mycontroller: controller.password,
                            typeKeyboard: "text",
                            obscureText: controller.isShowPassword,
                            valid: (val) {
                              return validInput(
                                  val: val!, min: 8, max: 30, type: "password");
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
                          const SizedBox(height: 10),
                          CustomTextFormAuth(
                            mycontroller: controller.repassword,
                            typeKeyboard: "text",
                            obscureText: controller.isShowPassword,
                            valid: (val) {
                              return validInput(
                                  val: val!, min: 8, max: 30, type: "password");
                            },
                            hinttext: '8'.tr,
                            labeltext: '40'.tr,
                          ),
                          CustomButtomAuth(
                            buttomColor: AppColor.gradientOne,
                            buttomColorTwo: AppColor.gradientTow,
                            textColor: Colors.white,
                            text: "41".tr,
                            onPressed: () {
                              controller.resetPassword();
                            },
                          ),
                          const SizedBox(height: 30),
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
    );
  }
}
