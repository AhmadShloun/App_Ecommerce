import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:ecommerce/view/widget/auth/custom_social_icon.dart';
import 'package:flutter/material.dart';

class CustomRowSocialMedia extends StatelessWidget {
  const CustomRowSocialMedia({
    Key? key,
    required this.onPressFacebook,
    required this.onPressTwitter,
    required this.onPressGoogle,
  }) : super(key: key);
  final void Function() onPressFacebook;
  final void Function() onPressTwitter;
  final void Function() onPressGoogle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CustomIconSocialMedia(
          iconSrc: AppImageAsset.facebook,
          onPressed: onPressFacebook,
        ),
        CustomIconSocialMedia(
          iconSrc: AppImageAsset.twitter,
          onPressed: onPressTwitter,
        ),
        CustomIconSocialMedia(
          iconSrc: AppImageAsset.google,
          onPressed: onPressGoogle,
        ),
      ],
    );
  }
}
