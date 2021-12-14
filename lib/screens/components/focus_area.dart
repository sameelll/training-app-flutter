import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:training_app/colors.dart' as color;

class FocusArea extends StatefulWidget {
  const FocusArea({
    Key? key,
  }) : super(key: key);

  @override
  State<FocusArea> createState() => _FocusAreaState();
}

class _FocusAreaState extends State<FocusArea> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OverflowBox(
        maxWidth: MediaQuery.of(context).size.width,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
              itemCount: info.length.toDouble() ~/ 2,
              itemBuilder: (_, i) {
                int a = 2 * i;
                int b = 2 * i + 1;
                return Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      margin:
                          const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                      width: (MediaQuery.of(context).size.width - 90) / 2,
                      height: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(info[a]['img'])),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(5, 5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.1)),
                            BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(-5, -5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.1))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            info[a]['title'],
                            style: TextStyle(
                                fontSize: 20,
                                color: color.AppColor.homePageDetail),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      margin:
                          const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                      width: (MediaQuery.of(context).size.width - 90) / 2,
                      height: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(info[b]['img'])),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(5, 5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.1)),
                            BoxShadow(
                                blurRadius: 3,
                                offset: const Offset(-5, -5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(0.1))
                          ]),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            info[b]['title'],
                            style: TextStyle(
                                fontSize: 20,
                                color: color.AppColor.homePageDetail),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
