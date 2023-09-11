import 'package:ecommerce/controller/home_controller/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/translate_db.dart';
import 'package:ecommerce/data/model/ItemsModel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemsHome extends GetView<HomeControllerImp> {
  const ListItemsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),

        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ItemsHome(
            itemsModel: ItemsModel.fromJson(controller.items[i]),
          );
        },
      ),
    );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;

  const ItemsHome({Key? key, required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Image.network(
            "${AppLink.imagesItems}/${itemsModel.itemsImage}",
            height: 100,
            width: 150,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 120,
          width: 200,
          decoration: BoxDecoration(
            color: AppColor.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          left: 10,
          child: Text(
            translateDB(itemsModel.itemsNameAr, itemsModel.itemsName),
            // "${itemsModel.itemsName}",
            style: const TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 17),
          ),
        ),
      ],
    );
  }
}
