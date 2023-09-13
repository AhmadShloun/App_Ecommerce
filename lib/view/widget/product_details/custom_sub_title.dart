import 'package:flutter/material.dart';

class CustomSubTitle extends StatelessWidget {
  final String title;
  const CustomSubTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
