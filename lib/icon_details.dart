import 'package:flutter/material.dart';
const str_style=TextStyle(
            color: Color(0xFF8D8F9E),
            fontSize: 18.0,
          );
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
          style: str_style
        )
      ],
    );
  }
}