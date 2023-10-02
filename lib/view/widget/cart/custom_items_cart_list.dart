import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class CustomItemsCartList extends StatelessWidget {
  const CustomItemsCartList(
      {super.key,
      required this.name,
      required this.price,
      required this.count});

  final String name;
  final String price;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                AppImageAsset.logo,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ListTile(
                    title: Text(name,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColor.black)),
                    subtitle: Text(
                      price,
                      style: const TextStyle(color: AppColor.primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                  ),
                  SizedBox(height: 30, child: Text(count)),
                  SizedBox(
                    height: 25,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
