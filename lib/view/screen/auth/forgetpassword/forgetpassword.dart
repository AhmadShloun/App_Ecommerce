import 'package:ecommerce/controller/auth/forgetpassword/forgetpassword_controller.dart';
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

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: BackgroundBody(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: CustomTextTitleAuth(
                    text: "10".tr,
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
                          CustomTextTitleAuth(text: "34".tr),
                          const SizedBox(height: 20),
                          CustomTextBodyAuth(text: "35".tr),
                          const SizedBox(height: 30),
                          CustomTextFormAuth(
                            mycontroller: controller.email,
                            typeKeyboard: "email",
                            valid: (val) {
                              return validInput(
                                  val: val!, min: 8, max: 50, type: "email");
                            },
                            hinttext: '6'.tr,
                            labeltext: '24'.tr,
                            iconData: Icons.email_outlined,
                          ),
                          CustomButtomAuth(
                            buttomColor: AppColor.gradientOne,
                            buttomColorTwo: AppColor.gradientTow,
                            textColor: Colors.white,
                            text: "36".tr,
                            onPressed: () {
                              controller.checkEmail();
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
