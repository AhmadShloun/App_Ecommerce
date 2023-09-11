import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final String textButton;
  final IconData iconData;
  final bool activate ;


  const CustomButtonAppBar(
      {Key? key,
      required this.textButton,
      required this.iconData,
      required this.onPressed,
      required this.activate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: activate == true ?AppColor.primaryColor:AppColor.grey2,
          ),
          Text(
            textButton,
            style: TextStyle(color:activate == true ?AppColor.primaryColor:AppColor.grey2),
          ),
        ],
      ),
    );
  }
}
