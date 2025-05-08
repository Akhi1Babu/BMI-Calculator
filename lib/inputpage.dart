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
  Color maleInactiveCardColor = inactiveCardColor;
  Color femaleInactiveCardColor = inactiveCardColor;
  void colorChange(int gender){//1- male.... 0- female
  
  if(gender==1){
    if(maleInactiveCardColor==inactiveCardColor)
   {
    maleInactiveCardColor=resusableCardColor;
    femaleInactiveCardColor=inactiveCardColor;
  }
  else{
    maleInactiveCardColor=inactiveCardColor;
  }
  }

  if(gender==0){
    if(femaleInactiveCardColor==inactiveCardColor){

   
    femaleInactiveCardColor=resusableCardColor;
    maleInactiveCardColor=inactiveCardColor;
  }
  else{
    femaleInactiveCardColor=inactiveCardColor;
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
                                        cardChild: iconDetails(iconimage: Icon(FontAwesomeIcons.mars),str: "male",),
                                      ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          colorChange(0);
                          
                        });
                      },
                      child: reusable_card(
                                        kolor: femaleInactiveCardColor,
                                        cardChild: iconDetails(iconimage: Icon(FontAwesomeIcons.venus),str: "female",),
                                      ),
                    )),
              ],
            ),
          ),
          Expanded(
            child: reusable_card(
              kolor: resusableCardColor,
              cardChild: Text(" "),
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