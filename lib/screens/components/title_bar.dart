import 'package:flutter/material.dart';
import 'package:training_app/colors.dart' as color;

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Training',
          style: TextStyle(
              fontSize: 30,
              color: color.AppColor.homePageTitle,
              fontWeight: FontWeight.w700),
        ),
        // Adding flex
        Expanded(
          child: Container(),
        ),
        Icon(Icons.arrow_back_ios,
            size: 20, color: color.AppColor.homePageIcons),
        const SizedBox(
          width: 10,
        ),
        Icon(Icons.calendar_today_outlined,
            size: 20, color: color.AppColor.homePageIcons),
        const SizedBox(
          width: 15,
        ),
        Icon(Icons.arrow_forward_ios,
            size: 20, color: color.AppColor.homePageIcons)
      ],
    );
  }
}
