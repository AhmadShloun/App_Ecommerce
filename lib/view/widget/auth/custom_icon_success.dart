import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomIconSuccess extends StatelessWidget {
  const CustomIconSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.check_circle_outline,
        size: 175,
        color: AppColor.primaryColor,
      ),
    );
  }
}
