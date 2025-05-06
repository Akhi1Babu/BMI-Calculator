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
                    child: reusable_card(
                  kolor: resusableCardColor,
                  cardChild: iconDetails(iconimage: Icon(FontAwesomeIcons.mars),str: "male",),
                )),
                Expanded(
                    child: reusable_card(
                  kolor: resusableCardColor,
                  cardChild: iconDetails(iconimage: Icon(FontAwesomeIcons.venus),str: "female",),
                )),
              ],
            ),
          ),
          Expanded(
            child: reusable_card(
              kolor: resusableCardColor,
              cardChild: Text(""),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: reusable_card(
                        kolor: resusableCardColor, cardChild: Text(""))),
                Expanded(
                    child: reusable_card(
                        kolor: resusableCardColor, cardChild: Text(""))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            decoration: BoxDecoration(
              color: bottonContainerColor,
            ),
          )
        ],
      ),
    );
  }
}