import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_app/colors.dart' as color;
import 'package:training_app/video_info.dart';

class ProgramBar extends StatelessWidget {
  const ProgramBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Your Program',
          style: TextStyle(
              fontSize: 20,
              color: color.AppColor.homePageSubtitle,
              fontWeight: FontWeight.w700),
        ),
        Expanded(
          child: Container(),
        ),
        Text(
          'Details',
          style: TextStyle(fontSize: 20, color: color.AppColor.homePageDetail),
        ),
        const SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () {
            Get.to(() => const VideoInfo());
          },
          child: Icon(
            Icons.arrow_forward,
            size: 20,
            color: color.AppColor.homePageIcons,
          ),
        )
      ],
    );
  }
}
