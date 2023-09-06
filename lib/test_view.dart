import 'package:ecommerce/mymediaquery.dart';
import 'package:flutter/material.dart';
class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MyMediaQuery.screenWidth(context);
    double screenHeight = MyMediaQuery.screenHeight(context);
    double blockSizeHorizontal = MyMediaQuery.blockSizeHorizontal(context, dividedBy: 2);
    double blockSizeVertical = MyMediaQuery.blockSizeVertical(context, dividedBy: 2);

    // Now you can use these values in your widget's layout or logic
    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Center(
        child: Text(
          'Screen Width: $screenWidth\nScreen Height: $screenHeight\n'
              'Block Size Horizontal (divided by 2): $blockSizeHorizontal\n'
              'Block Size Vertical (divided by 2): $blockSizeVertical',
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}

