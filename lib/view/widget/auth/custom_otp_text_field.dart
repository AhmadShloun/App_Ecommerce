import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomOtpTextField extends StatelessWidget {
  const CustomOtpTextField({super.key, required this.onSubmit});

  final void Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      fieldWidth: 50,
      borderRadius: BorderRadius.circular(20),
      numberOfFields: 5,
      borderColor: AppColor.primaryColor,
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        if (kDebugMode) {
          print("====================================$code===============");
        }
        //handle validation or checks here
      },
      onSubmit: onSubmit,
    );
  }
}
