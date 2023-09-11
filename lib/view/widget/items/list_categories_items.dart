import 'package:ecommerce/controller/items_controller/items_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/translate_db.dart';
import 'package:ecommerce/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          return Categories(
            categoriesModel:
                CategoriesModel.fromJson(controller.categories[index]),
            i: index,
          );
        },
      ),
    );
  }
}

class Categories extends GetView<ItemsControllerImp> {
  const Categories({Key? key, required this.categoriesModel, required this.i})
      : super(key: key);
  final CategoriesModel categoriesModel;
  final int i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeSelectedCat(i,categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          GetBuilder<ItemsControllerImp>(
            builder: (controller) {
              return Container(
                padding: const EdgeInsetsDirectional.only(bottom: 5,top: 5,end: 5,start: 5),
                decoration: controller.selectedCat == i
                    ? const BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: AppColor.primaryColor, width: 3)))
                    : null,
                child: Text(
                  "${translateDB(categoriesModel.categoriesNameAr, categoriesModel.categoriesName)}",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
