import 'package:flutter/material.dart';
import 'package:training_app/colors.dart' as color;

class FocusAreaTitle extends StatelessWidget {
  const FocusAreaTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Area of focus',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: color.AppColor.homePageTitle),
        )
      ],
    );
  }
}
