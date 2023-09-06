import 'package:ecommerce/controller/auth/welcomeback_controller.dart';
import 'package:ecommerce/core/class/StatusOverLayout.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/core/functions/over_layout_style.dart';
import 'package:ecommerce/view/widget/auth/custom_buttom_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_body_auth.dart';
import 'package:ecommerce/view/widget/auth/custom_text_title_auth.dart';
import 'package:ecommerce/view/widget/auth/logo-ecommerce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    overLayoutStyle(style: StatusLayout.light);
    Get.put(WelcomeBackImp());
    return Scaffold(
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<WelcomeBackImp>(
          builder: (controller) => Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                tileMode: TileMode.repeated,
                colors: [
                  AppColor.gradientOne,
                  AppColor.gradientTow,
                ],
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 30),
            child: ListView(
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 125,
                  color: AppColor.white,
                ),
                CustomTextTitleAuth(
                    text: "1".tr, textColor: AppColor.white),

                const SizedBox(height: 100),

                CustomTextBodyAuth(
                    text: "2".tr ,textColor: AppColor.white),

                const SizedBox(height: 40),

                // //Buttom SignIn
                CustomButtomAuth(
                  text: "13".tr,
                  buttomColor: AppColor.transparent,
                  textColor: AppColor.white,
                  onPressed: () {
                    controller.goToSignIn();
                  },
                ),
                const SizedBox(height: 10),

                // //Buttom Sign Up
                CustomButtomAuth(
                  text: "4".tr,
                  buttomColor: AppColor.white,
                  textColor: AppColor.black,
                  onPressed: () {
                    controller.goToSignUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
