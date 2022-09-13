import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_application/constants/constants.dart';

class RightShape extends StatelessWidget {
  const RightShape({Key? key, this.width = 0}) : super(key: key);
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            color: redcolor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
