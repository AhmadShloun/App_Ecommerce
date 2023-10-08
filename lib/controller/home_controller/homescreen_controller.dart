import 'package:ecommerce/view/screen/myfavourite.dart';
import 'package:ecommerce/view/screen/home/home.dart';
import 'package:ecommerce/view/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int index);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;
  List bottomAppBar = [
    {"title": "home", "icon": Icons.home},
    {"title": "favourite", "icon": Icons.favorite},
    {"title": "profile", "icon": Icons.person_pin_sharp},
    {"title": "settings", "icon": Icons.settings}
  ];
  List<Widget> listPage = [
    const HomePage(),
    // const MyFavourite(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(child: Text("Favourite")),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(child: Text("Profile")),
      ],
    ),
    const Settings(),
  ];

  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
