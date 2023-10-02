import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/middleware/mymiddleware.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce/view/screen/auth/success_signup.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/verfiycodeforgetpassword.dart';
import 'package:ecommerce/view/screen/auth/verfiycodesignup.dart';
import 'package:ecommerce/view/screen/cart/cart.dart';
import 'package:ecommerce/view/screen/favourite/myfavourite.dart';
import 'package:ecommerce/view/screen/home/homescreen.dart';
import 'package:ecommerce/view/screen/items/items.dart';
import 'package:ecommerce/view/screen/language/language.dart';
import 'package:ecommerce/view/screen/onboarding/onboarding.dart';
import 'package:ecommerce/view/screen/product/product_details.dart';
import 'package:ecommerce/view/screen/welcome_back.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  // Language
  GetPage(name: AppRoute.language, page: () => const Language(), middlewares: [MyMiddleware()]),
  // GetPage(name: AppRoute.language, page: () => const CartScreen(),),

  // OnBoarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),

  //Auth
  GetPage(name: AppRoute.welcome, page: () => const WelcomeBack()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.singUP, page: () => const SingUP()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetPassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSingUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),

  //  Home
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  GetPage(name: AppRoute.productDetails, page: () => const ProductDetails()),
  GetPage(name: AppRoute.myfavourite, page: () => const MyFavourite()),
  GetPage(name: AppRoute.cart, page: () => const CartScreen()),

];
