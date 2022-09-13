import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/background_shape_left.dart';
import '../widgets/background_shape_right.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightcontroller = TextEditingController();
  final heightcontroller = TextEditingController();

  double bmiResult = 0;
  String bmiResultText = '';

  double goodWidth = 100;
  double badWidth = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'تو چنده؟ BMI',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: blackcolor, fontSize: 18),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: TextField(
                    controller: weightcontroller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'وزن (کیلوگرم)',
                      hintStyle: TextStyle(
                        color: redcolor.withOpacity(0.5),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: TextField(
                    controller: heightcontroller,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'قد (متر)',
                      hintStyle: TextStyle(
                        color: redcolor.withOpacity(0.5),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                setState(() {
                  final weight = double.parse(weightcontroller.text);
                  final height = double.parse(heightcontroller.text);

                  bmiResult = weight / (height * height);

                  if (bmiResult > 25) {
                    badWidth = 200;
                    goodWidth = 50;
                    bmiResultText = 'شما اضافه وزن دارید';
                  } else if (bmiResult > 18.5 && bmiResult <= 25) {
                    badWidth = 200;
                    goodWidth = 200;
                    bmiResultText = 'وزن شما نرمال است';
                  } else {
                    badWidth = 50;
                    goodWidth = 50;
                    bmiResultText = 'شما کمبود وزن دارید';
                  }
                });
              },
              child: Text(
                '! محاسبه کن ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
              ),
            ),
            Text(
              '${bmiResult.toStringAsFixed(2)}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                  color: Colors.blue),
            ),
            Text(
              '$bmiResultText',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 26, color: Colors.red),
            ),
            SizedBox(height: 50),
            RightShape(width: badWidth),
            SizedBox(height: 20),
            LeftShape(width: goodWidth),
          ],
        ),
      )),
    );
  }
}
