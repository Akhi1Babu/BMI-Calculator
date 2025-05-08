import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class iconDetails extends StatelessWidget {
  late Icon iconimage;
  late String str;
  iconDetails({required this.iconimage,required this.str});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconimage,
       
        SizedBox(
          height: 15.0,
        ),
        Text(
          str,
          style: kStr_style,
        )
      ],
    );
  }
}