import 'package:flutter/material.dart';

class CustomTitleName extends StatelessWidget {
  final String name;

  const CustomTitleName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        name,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
