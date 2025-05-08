import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_details.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleInactiveCardColor = kInactiveCardColor;
  Color femaleInactiveCardColor = kInactiveCardColor;
  int height = 180;
  void colorChange(int gender) {
    //1- male.... 0- female

    if (gender == 1) {
      if (maleInactiveCardColor == kInactiveCardColor) {
        maleInactiveCardColor = kResusableCardColor;
        femaleInactiveCardColor = kInactiveCardColor;
      } else {
        maleInactiveCardColor = kInactiveCardColor;
      }
    }

    if (gender == 0) {
      if (femaleInactiveCardColor == kInactiveCardColor) {
        femaleInactiveCardColor = kResusableCardColor;
        maleInactiveCardColor = kInactiveCardColor;
      } else {
        femaleInactiveCardColor = kInactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      colorChange(1);
                    });
                  },
                  child: reusable_card(
                    kolor: maleInactiveCardColor,
                    cardChild: iconDetails(
                      iconimage: Icon(FontAwesomeIcons.mars),
                      str: "male",
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      colorChange(0);
                    });
                  },
                  child: reusable_card(
                    kolor: femaleInactiveCardColor,
                    cardChild: iconDetails(
                      iconimage: Icon(FontAwesomeIcons.venus),
                      str: "female",
                    ),
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: reusable_card(
              kolor: kResusableCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Height ",
                    style: kStr_style,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                          style: kNumberStyle),
                          Text("cm",)
                    ],
                  ),
                  Slider(value: height.toDouble(),
                  min: 120,
                  max: 220,
                  activeColor: Color(0xFFEA1556),
                  inactiveColor: Color(0xFF8D8F9E),
                   onChanged: (double newValue) {
                    setState(() {
                      height = newValue.round();
                    });
                  },),

                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: reusable_card(
                        kolor: kResusableCardColor, cardChild: Text(""))),
                Expanded(
                    child: reusable_card(
                        kolor: kResusableCardColor, cardChild: Text(""))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            decoration: BoxDecoration(
              color: kBottonContainerColor,
            ),
          )
        ],
      ),
    );
  }
}
