import 'package:ecommerce/controller/product_controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:ecommerce/view/widget/product_details/custom_bottom_navbar.dart';
import 'package:ecommerce/view/widget/product_details/custom_sub_title.dart';
import 'package:ecommerce/view/widget/product_details/custom_title_body.dart';
import 'package:ecommerce/view/widget/product_details/custom_title_name.dart';
import 'package:ecommerce/view/widget/product_details/price_and_count.dart';
import 'package:ecommerce/view/widget/product_details/subitems_list.dart';
import 'package:ecommerce/view/widget/product_details/top_page_product_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    return Scaffold(
      // extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: CustomBottomNavBar(
        onPressed: () {
          print("Add To Cart");
        },
      ),
      body: Container(
        color: AppColor.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopPageProductDetails(),
            Expanded(
              child: MainBody(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                      top: 20, left: 5, right: 2, bottom: 20),
                  children: [
                    CustomTitleName(name: "${controller.itemsModel.itemsName}"),
                    const SizedBox(height: 20),
                    PriceAndCountItems(
                        onAdd: () {},
                        onRemove: () {},
                        count: "999",
                        price: "1000.0"),
                    const SizedBox(height: 40),
                    CustomSubTitle(title: "57".tr),
                    const SizedBox(height: 3),
                    const CustomTitleBody(description: "aaaaaaaaaaaaaaaaa"),
                    const SizedBox(height: 20),
                    CustomSubTitle(title: "58".tr),
                    const SizedBox(height: 10),
                    const SubItemsList(),
                    const SizedBox(height: 50),
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
