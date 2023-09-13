import 'package:ecommerce/controller/home_controller/home_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/home/custom_title_body_home.dart';
import 'package:ecommerce/view/widget/custom_appbar_home.dart';
import 'package:ecommerce/view/widget/home/custom_title_appbar_home.dart';
import 'package:ecommerce/view/widget/home/list_categories_home.dart';
import 'package:ecommerce/view/widget/home/list_items_home.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Container(
          color: AppColor.primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              CustomTitleAppBarHome(title: "52".tr, textColor: AppColor.white),
              const SizedBox(height: 7),
              CustomAppBar(
                titleAppbar: "53".tr,
                onPressedIcon: () {
                  print("serch");
                },
                onChangedSearch: (value) {},
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: MainBody(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding:
                        const EdgeInsetsDirectional.symmetric(horizontal: 5),
                    children: [
                      CustomTitleBodyHome(title: "54".tr),
                      const ListCategoriesHome(),
                      CustomTitleBodyHome(title: "55".tr),
                      const ListItemsHome(),
                      const ListItemsHome(),
                      const ListItemsHome(),
                      const ListItemsHome(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
