import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Text("Your Result",style: kResultText)),
          Expanded(
            flex: 5,
            child: reusable_card(kolor: kResusableCardColor, cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Normal",style: kNormalTextStyle,),
                Text("150.0",style: kLargeTextStyle,),
              ],
            
            )),
          )
          
        ],
      )
      
    );
}
}