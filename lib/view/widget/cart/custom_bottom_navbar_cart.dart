import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/cart/custom_buttom_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavBarCart extends StatelessWidget {
  const CustomBottomNavBarCart(
      {super.key,
      required this.price,
      required this.shipping,
      required this.totalPrice});

  final String price;
  final String shipping;
  final String totalPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("61".tr)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  price,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("62".tr)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  shipping,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(color: AppColor.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "63".tr,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColor.primaryColor, fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  totalPrice,
                  style: const TextStyle(color: AppColor.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButtonCart(textButton: "64".tr, onPressed: () {}),
        ],
      ),
    );
  }
}
