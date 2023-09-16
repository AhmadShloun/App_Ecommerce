import 'package:ecommerce/controller/favourite_controller/myfavourite_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/custom_appbar_home.dart';
import 'package:ecommerce/view/widget/home/custom_title_appbar_home.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:ecommerce/view/widget/myfavourite/custom_list_favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavourite extends StatelessWidget {
  const MyFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavouriteControllerImp());
    return Scaffold(
      body: Container(
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
              onPressedIconFavorite: () {
                // controller.goToMyFavourite();
              },
              onChangedSearch: (value) {},
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: MainBody(
                child: GetBuilder<MyFavouriteControllerImp>(
                  builder: (controller) {
                    return ListView(
                      physics: const BouncingScrollPhysics(),
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 5),
                      children: [
                        HandlingDataView(
                          statusRequest: controller.statusRequest,
                          widget: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.data.length,
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              childAspectRatio: 0.7,

                            ),
                            itemBuilder: (context, index) {
                              return CustomListFavouriteItems(favouriteModel: controller.data[index]);
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
