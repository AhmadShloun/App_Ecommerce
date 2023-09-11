import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/translate_db.dart';
import 'package:ecommerce/data/model/ItemsModel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';

class CustomListItems extends StatelessWidget {
  final ItemsModel itemsModel;

  const CustomListItems({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                  imageUrl: "${AppLink.imagesItems}/${itemsModel.itemsImage!}",
                height: 100,
                fit: BoxFit.fill,

              ),
              const SizedBox(height: 10,),
              Text(
                translateDB(itemsModel.itemsNameAr!, itemsModel.itemsName!),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rating 3.5",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
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
                          (index) => const Icon(Icons.star,size: 15,color: AppColor.amber),
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
                    "${itemsModel.itemsPrice!} \$",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: AppColor.primaryColor),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined),
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
