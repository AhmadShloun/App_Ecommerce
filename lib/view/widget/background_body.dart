import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';


class BackgroundBody extends StatelessWidget {
  const BackgroundBody({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          tileMode: TileMode.repeated,
          colors: [
            AppColor.gradientOne,
            AppColor.gradientTow,
          ],
        ),
      ),
      child: child,
    );
  }
}
