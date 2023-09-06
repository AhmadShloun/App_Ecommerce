import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;

  const CustomButtonLang({Key? key, required this.textButton, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        textColor: AppColor.white,
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(
          textButton,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.white),
        ),
      ),
    );
  }
}
