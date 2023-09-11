import 'package:ecommerce/controller/onboarding_controller/onboardingcontroller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/view/widget/onboarding/custom_button_onboarding.dart';
import 'package:ecommerce/view/widget/onboarding/custom_slider_onboarding.dart';
import 'package:ecommerce/view/widget/onboarding/dot_controller_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: WillPopScope(
          onWillPop: alertExitApp,
          child: Column(
            children: [
              const Expanded(flex: 4, child: CustomSliderOnBoarding()),
              Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
