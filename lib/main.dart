import 'package:flutter/material.dart';
void main(){
  runApp(BMICalulator());
}

class BMICalulator extends StatelessWidget {
  const BMICalulator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff090C1E)
        ),
        scaffoldBackgroundColor: Color(0xff090C1E)
      ),
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
        title: Text("BMI Calculator",),
      ),
      body: Center(child: Text("Hai ")),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),

    );
  }
}