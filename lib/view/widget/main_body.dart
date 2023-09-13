import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MainBody extends StatelessWidget {
  const MainBody({Key? key, required this.child, this.padding = const EdgeInsets.symmetric(horizontal: 5) // Default padding
  })
      : super(key: key);

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height/2,
      padding: padding,
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: child,
    );
  }
}
