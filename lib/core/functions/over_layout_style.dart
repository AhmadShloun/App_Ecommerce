import 'package:ecommerce/core/class/StatusOverLayout.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/services.dart';

overLayoutStyle({required StatusLayout style}) {
  if (style == StatusLayout.light) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.transparent, // Color for Android
        statusBarIconBrightness: Brightness.light,
      ),
    );
  } else {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.transparent, // Color for Android
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
