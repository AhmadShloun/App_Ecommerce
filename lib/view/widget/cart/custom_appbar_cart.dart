import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomAppBarCart extends StatelessWidget {
  const CustomAppBarCart({super.key, this.onPressed, required this.title});

  final Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed:onPressed,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColor.white,
                      )))),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: AppColor.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
