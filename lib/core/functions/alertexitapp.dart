import 'dart:io';

import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: '48'.tr,
    middleText: "47".tr,
    actions: [
      //Exit app
      ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(AppColor.primaryColor)),
          onPressed: () {
            exit(0);
          },
          child: Text("49".tr)),
      // Cancel
      ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(AppColor.primaryColor)),
          onPressed: () {
            Get.back();
          },
          child: Text("50".tr)),
    ],
  );
  return Future.value(true);
}
