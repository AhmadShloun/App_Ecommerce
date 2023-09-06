import 'package:ecommerce/core/class/StatusOverLayout.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/core/functions/over_layout_style.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:ecommerce/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    overLayoutStyle(style: StatusLayout.dark);
    return Scaffold(
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          color: AppColor.white,
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //choose Lang
              Text("1".tr, style: Theme.of(context).textTheme.displayMedium),
              const SizedBox(height: 20),
              CustomButtonLang(
                textButton: "Ar",
                onPressed: () {
                  controller.changeLang("ar");
                  Get.toNamed(AppRoute.onBoarding);
                },
              ),
              CustomButtonLang(
                textButton: "En".tr,
                onPressed: () {
                  controller.changeLang("en");
                  Get.toNamed(AppRoute.onBoarding);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
