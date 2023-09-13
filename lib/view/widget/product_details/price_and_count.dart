import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class PriceAndCountItems extends StatelessWidget {
  final void Function() onAdd;
  final  void Function() onRemove;
  final String count;
  final String price;

  const PriceAndCountItems({super.key, required this.onAdd, required this.onRemove, required this.count, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(onPressed: onRemove, icon: const Icon(Icons.remove)),
            Container(
              width: 50,
              padding: const EdgeInsets.only(bottom: 2),
              decoration:
                  BoxDecoration(border: Border.all(color: AppColor.black)),
              child: Text(count,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(height: 1.6, fontSize: 20)),
            ),
            IconButton(onPressed:onAdd, icon: const Icon(Icons.add)),
          ],
        ),
        const Spacer(),
        Text(
          "$price \$",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 30, color: AppColor.primaryColor, height: 1.1),
        ),
      ],
    );
  }
}
