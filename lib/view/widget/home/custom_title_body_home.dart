import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTitleBodyHome extends StatelessWidget {
  const CustomTitleBodyHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Text(
        title,
        // style: TextStyle(
        //   fontSize: 20,
        //   color: textColor,
        //   fontWeight: FontWeight.bold,
        // ),
        style: Theme.of(context)
            .textTheme
            .bodyMedium!.copyWith(color: AppColor.black)
      ),
    );
  }
}
