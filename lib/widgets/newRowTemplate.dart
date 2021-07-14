import 'package:flutter/material.dart';
import 'package:liveasy/constants/color.dart';
import 'package:liveasy/constants/fontSize.dart';
import 'package:liveasy/constants/fontWeights.dart';

class NewRowTemplate extends StatelessWidget {
  final String? label;
  final String? value;

  NewRowTemplate({ required this.label , required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            label!,
            style: TextStyle(
              fontSize: size_6,
            ),
          ),
          Text(
            ' : ${value!}',
            style: TextStyle(
              color: veryDarkGrey,
              fontWeight: mediumBoldWeight,
              fontSize: size_6,
            ),
          )
        ],
      ),
    );
  }
}