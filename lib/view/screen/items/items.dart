import 'package:ecommerce/controller/favourite_controller/favourite_controller.dart';
import 'package:ecommerce/controller/items_controller/items_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/model/ItemsModel.dart';
import 'package:ecommerce/view/widget/custom_appbar_home.dart';
import 'package:ecommerce/view/widget/home/custom_title_appbar_home.dart';
import 'package:ecommerce/view/widget/items/custom_list_items.dart';
import 'package:ecommerce/view/widget/items/list_categories_items.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    FavouriteControllerImp controllerFav = Get.put(FavouriteControllerImp());
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
                print("favorite");
              },
              onChangedSearch: (value) {},
            ),
            const SizedBox(height: 15),
            Expanded(
              child: MainBody(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const ListCategoriesItems(),
                    GetBuilder<ItemsControllerImp>(
                      builder: (controller) => HandlingDataView(
                        statusRequest: controller.statusRequest,
                        widget: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.data.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.73),
                          itemBuilder: (context, index) {
                            controllerFav.isFavourite[controller.data[index]
                                    ['items_id']] =
                                controller.data[index]['favourite'];
                            return CustomListItems(
                              itemsModel:
                                  ItemsModel.fromJson(controller.data[index]),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
