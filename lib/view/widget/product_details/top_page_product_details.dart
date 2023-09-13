import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/product_controller/productdetails_controller.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopPageProductDetails extends GetView<ProductDetailsControllerImp> {
  const TopPageProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Hero(
        tag: "${controller.itemsModel.itemsId}",
        child: CachedNetworkImage(
          imageUrl:
              "${AppLink.imagesItems}/${controller.itemsModel.itemsImage!}",
          height: 250,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
