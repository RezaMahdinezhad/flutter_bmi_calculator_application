import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_application/constants/constants.dart';
import 'package:flutter_bmi_calculator_application/screens/home_screen.dart';
import 'package:flutter_bmi_calculator_application/widgets/background_shape_left.dart';
import 'package:flutter_bmi_calculator_application/widgets/background_shape_right.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'dana'),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
