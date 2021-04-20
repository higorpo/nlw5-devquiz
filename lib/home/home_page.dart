import 'package:DevQuiz/home/widgets/appbar/appbar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LevelButtonWidget(
                label: "Fácil",
              ),
              SizedBox(width: 8.0),
              LevelButtonWidget(
                label: "Médio",
              ),
              SizedBox(width: 8.0),
              LevelButtonWidget(
                label: "Difícil",
              ),
              SizedBox(width: 8.0),
              LevelButtonWidget(
                label: "Perito",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
