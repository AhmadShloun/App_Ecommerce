import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/cart/custom_appbar_cart.dart';
import 'package:ecommerce/view/widget/cart/custom_bottom_navbar_cart.dart';
import 'package:ecommerce/view/widget/cart/custom_items_cart_list.dart';
import 'package:ecommerce/view/widget/main_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBarCart(price: "1200 \$", shipping: "300 \$", totalPrice: "1500 \$"),
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        color: AppColor.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBarCart(title: "65".tr, onPressed: () {}),
            const SizedBox(height: 15),
            Expanded(
              child: MainBody(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: const [
                          CustomItemsCartList(
                              name: "Mobile", price: "1200 \$", count: "4"),
                        ],
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
