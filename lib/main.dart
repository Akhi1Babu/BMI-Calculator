import 'package:flutter/material.dart';

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
                  child: reusable_card(kolor:  Color(0xff1D1F33),)
                ),
                Expanded(
                  child: reusable_card(kolor: Color(0xff1D1F33),)
                ),
              ],
            ),
          ),
          Expanded(
            child: reusable_card(kolor:  Color(0xff1D1F33),),
          ),
           Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusable_card(kolor:  Color(0xff1D1F33),)
                ),
                Expanded(
                  child: reusable_card(kolor:  Color(0xff1D1F33),)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class reusable_card extends StatelessWidget {
  late Color  kolor;

  reusable_card({required this.kolor});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: kolor,
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
