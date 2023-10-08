import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubItemsList extends GetView<ProductDetailsControllerImp> {
  const SubItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          ...List.generate(
            controller.subItems.length,
            (index) => Container(
              height: 60,
              width: 90,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                bottom: 5,
              ),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.secondColor),
                color: controller.subItems[index]["active"] == "1"
                    ? AppColor.secondColor
                    : AppColor.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                controller.subItems[index]["name"],
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: controller.subItems[index]["active"] == "1"
                        ? AppColor.white
                        : AppColor.secondColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
