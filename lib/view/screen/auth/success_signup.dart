import 'package:ecommerce/controller/auth/successsignup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/custom_icon_success.dart';
import 'package:ecommerce/view/widget/auth/custom_buttom_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:ecommerce/view/widget/background_body.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
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
                child: Column(
                  children: [
                    const CustomIconSuccess(),
                    Text(
                      "43".tr,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 30),
                    ),
                    Text("46".tr),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButtomAuth(
                        buttomColor: AppColor.gradientOne,
                        buttomColorTwo: AppColor.gradientTow,
                        textColor: Colors.white,
                        // testSize: 18,
                        text: "45".tr,
                        onPressed: () {
                          controller.goToPageLogin();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
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
