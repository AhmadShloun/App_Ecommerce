import 'package:ecommerce/controller/homescreen_controller.dart';
import 'package:ecommerce/core/class/StatusOverLayout.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/over_layout_style.dart';
import 'package:ecommerce/view/widget/home/custom_bottom_appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    overLayoutStyle(style: StatusLayout.dark);
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            title: const Center(child: Text("Title")),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.primaryColor,
            onPressed: () {
              // controller.changePage(0);
            },
            child: const Icon(Icons.shopping_basket_outlined),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const CustomButtomAppBarHome(),
          body: controller.listPage.elementAt(controller.currentPage),
        );
      },
    );
  }
}
