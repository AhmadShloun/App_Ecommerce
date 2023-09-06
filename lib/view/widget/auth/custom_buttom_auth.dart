import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  const CustomButtomAuth({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.buttomColor,
    required this.textColor,
    this.buttomColorTwo,
  }) : super(key: key);
  final String text;
  final void Function() onPressed;
  final Color buttomColor;
  final Color? buttomColorTwo;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        // color: buttomColor,
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            buttomColor,
            buttomColorTwo ?? buttomColor,
          ],
        ),
      ),
      margin: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.white),
          // side: const BorderSide(style: BorderStyle.none),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10,),
        textColor: AppColor.white,
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: textColor,
              ),
        ),
      ),
    );
  }
}
