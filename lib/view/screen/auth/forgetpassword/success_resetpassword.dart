import 'package:ecommerce/controller/forgetpassword/successresetpassword_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custom_icon_success.dart';
import 'package:ecommerce/view/widget/auth/custom_buttom_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:ecommerce/view/widget/background_body.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      body: BackgroundBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child:
                  CustomTextTitleAuth(text: "42".tr, textColor: AppColor.white),
            ),
            Expanded(
              flex: 3,
              child: MainBody(
                child: ListView(
                  children: [
                    const SizedBox(height: 30),
                    const CustomIconSuccess(),
                    CustomTextTitleAuth(text: "43".tr),
                    Center(child: Text("44".tr)),
                    const SizedBox(height: 100),
                    CustomButtomAuth(
                      buttomColor: AppColor.gradientOne,
                      buttomColorTwo: AppColor.gradientTow,
                      textColor: Colors.white,
                      text: "45".tr,
                      onPressed: () {
                        controller.goToPageLogin();
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
    );
  }
}
