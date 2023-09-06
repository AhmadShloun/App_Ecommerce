// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
  const CustomTextTitleAuth(
      {Key? key, required this.text, this.textColor})
      : super(key: key);
  final String text;


  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
          vertical: 30, horizontal: 1),
      color: AppColor.transparent,
      margin: const EdgeInsets.only(top: 30),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .displayMedium!
            .copyWith(color: textColor),
      ),
    );
  }
}
