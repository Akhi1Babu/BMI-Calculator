import 'package:bmi_calculator/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';



void main() {
  runApp(BMICalulator());
}

class BMICalulator extends StatelessWidget {
  const BMICalulator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.green),
          appBarTheme:
              AppBarTheme(backgroundColor: Color.fromARGB(255, 2, 2, 2)),
          scaffoldBackgroundColor: Color(0xff090C1E)),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}






