import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  const LeftShape({Key? key, this.width = 0}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
