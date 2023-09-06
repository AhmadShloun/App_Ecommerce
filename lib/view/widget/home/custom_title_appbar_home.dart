import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTitleAppBarHome extends StatelessWidget {
  const CustomTitleAppBarHome({Key? key, required this.title,required this.textColor}) : super(key: key);
  final String title;
  final Color textColor;

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
            .displayMedium!
            .copyWith(color: textColor),
      ),
    );
  }
}
