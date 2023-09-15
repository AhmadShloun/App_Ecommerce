import 'package:ecommerce/controller/auth/forgetpassword/verfiycode_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custom_otp_text_field.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:ecommerce/view/widget/background_body.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerfiyCodeControllerImp());
    return Scaffold(
      body: GetBuilder<VerfiyCodeControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: BackgroundBody(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: CustomTextTitleAuth(
                      text: "34".tr, textColor: AppColor.white),
                ),
                Expanded(
                  flex: 3,
                  child: MainBody(
                    child: ListView(
                      children: [
                        const SizedBox(height: 20),
                        CustomTextBodyAuth(text: "37".tr),
                        const SizedBox(height: 15),
                        CustomOtpTextField(
                          onSubmit: (String verificationCode) {
                            controller.checkCode(verificationCode);
                          },
                        ),
                        const SizedBox(height: 30),
                      ],
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
