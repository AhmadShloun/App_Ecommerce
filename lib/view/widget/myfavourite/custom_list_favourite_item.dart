import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/favourite_controller/myfavourite_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/translate_db.dart';
import 'package:ecommerce/data/model/myfavouritemodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListFavouriteItems extends GetView<MyFavouriteControllerImp> {
  final MyFavouriteModel favouriteModel;

  const CustomListFavouriteItems({super.key, required this.favouriteModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.gotToPageProductDetails(itemsModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: "${favouriteModel.itemsId}",
                child: CachedNetworkImage(
                  imageUrl:
                  "${AppLink.imagesItems}/${favouriteModel.itemsImage!}",
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                translateDB(
                    favouriteModel.itemsNameAr!, favouriteModel.itemsName!),
                style: Theme
                    .of(context)
                    .textTheme
                    .titleMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating 3.5",
                    textAlign: TextAlign.center,
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(textBaseline: TextBaseline.alphabetic),
                  ),
                  Container(
                    height: 22,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        ...List.generate(
                          5,
                              (index) =>
                          const Icon(Icons.star,
                              size: 15, color: AppColor.amber),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${favouriteModel.itemsPrice!} \$",
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: AppColor.primaryColor),
                  ),
                     IconButton(
                      onPressed: () {
                        controller.deleteFromFavourite(favouriteModel.favouriteId!);
                      },
                      icon: const Icon(Icons.delete_outline),
                      color: AppColor.primaryColor,
                    ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
