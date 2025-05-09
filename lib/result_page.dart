import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/inputpage.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String bmi_result;
  final String bmi_value;
  final String bmi_interpretation;

  ResultScreen(
      {required this.bmi_result,
      required this.bmi_value,
      required this.bmi_interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Result"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.bottomLeft,
                    child: Text("Your Result", style: kResultText))),
            Expanded(
              flex: 5,
              child: reusable_card(
                  kolor: kResusableCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmi_result,
                        style: kNormalTextStyle,
                      ),
                      Text(
                        bmi_value,
                        style: kLargeTextStyle,
                      ),
                      Text("Normal BMI range :", style: kStr_style),
                      Text(
                        "18.5 - 25 kg/m2",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 177, 179, 189),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          
                          bmi_interpretation,
                          style: kInterpretationTextStyle,
                        ),
                      ),
                    ],
                  )),
            ),
            bottomContainerWidget(
                text: "Calculate Again",
                onpressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
