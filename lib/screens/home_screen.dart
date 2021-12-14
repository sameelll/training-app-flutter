import 'package:flutter/material.dart';
import 'package:training_app/colors.dart' as color;

import 'components/program_bar.dart';
import 'components/title_bar.dart';
import 'components/workout_panel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: const [
            // Title bar
            TitleBar(),
            // Space between title bar
            SizedBox(
              height: 30,
            ),
            // 'Your program' bar
            ProgramBar(),
            SizedBox(
              height: 20,
            ),
            // Workout panel
            WorkoutPanel()
          ],
        ),
      ),
    );
  }
}
