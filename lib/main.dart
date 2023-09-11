import 'package:ecommerce/binding/initialbinding.dart';
import 'package:ecommerce/core/class/StatusOverLayout.dart';
import 'package:ecommerce/core/functions/over_layout_style.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:ecommerce/core/localization/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/test_view.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/verfiycodeforgetpassword.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/success_signup.dart';
import 'package:ecommerce/view/screen/language/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  overLayoutStyle(style:StatusLayout.dark );
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  //   SystemUiOverlay.top
  // ]);
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      locale: controller.language,
      theme: controller.appTheme,
      initialBinding: InitialBinding(),
      getPages: routes,
    );
  }
}
