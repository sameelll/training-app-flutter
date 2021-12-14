// Packages
import 'package:flutter/material.dart';
import 'package:training_app/colors.dart' as color;

// Components
import 'components/effort_container.dart';
import 'components/focus_area.dart';
import 'components/focus_area_title.dart';
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
            // Space Between Title Bar
            SizedBox(
              height: 30,
            ),
            // 'Your program' Bar
            ProgramBar(),
            SizedBox(
              height: 20,
            ),
            // Workout Panel
            WorkoutPanel(),
            SizedBox(
              height: 5,
            ),
            // Efoort Container
            EffortContainer(),
            // Focus Area
            FocusAreaTitle(),
            FocusArea(),
          ],
        ),
      ),
    );
  }
}
