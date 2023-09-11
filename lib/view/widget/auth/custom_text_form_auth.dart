import 'package:ecommerce/core/functions/keyboardType.dart';
import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  const CustomTextFormAuth({
    Key? key,
    required this.hinttext,
    required this.labeltext,
    this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.typeKeyboard,
    this.obscureText,
    this.onTapIconSuffix,
  }) : super(key: key);
  final String hinttext;
  final String labeltext;
  final IconData? iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;

  final String typeKeyboard;
  final bool? obscureText;
  final void Function()? onTapIconSuffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        // style:Theme.of(context).textTheme.bodyMedium ,
        keyboardType: keyboardType(type: typeKeyboard),
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
          hintText: hinttext,
          // hintStyle: const TextStyle(fontSize: 14),
          hintStyle: Theme.of(context).textTheme.labelMedium,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(labeltext)),
          suffixIcon: InkWell(onTap: onTapIconSuffix, child: Icon(iconData)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
