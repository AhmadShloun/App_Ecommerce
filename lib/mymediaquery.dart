import 'package:flutter/widgets.dart';
// double screenWidth = MyMediaQuery.screenWidth(context);
// double screenHeight = MyMediaQuery.screenHeight(context);
// double blockSizeHorizontal = MyMediaQuery.blockSizeHorizontal(context, dividedBy: 2);
// double blockSizeVertical = MyMediaQuery.blockSizeVertical(context, dividedBy: 2);

class MyMediaQuery {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double blockSizeHorizontal(BuildContext context, {double dividedBy = 1}) {
    return screenWidth(context) / dividedBy;
  }

  static double blockSizeVertical(BuildContext context, {double dividedBy = 1}) {
    return screenHeight(context) / dividedBy;
  }
}
