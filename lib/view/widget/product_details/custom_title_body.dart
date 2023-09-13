import 'package:flutter/material.dart';

class CustomTitleBody extends StatelessWidget {
  final String description;
  const CustomTitleBody({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
