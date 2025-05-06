import 'package:flutter/material.dart';

class reusable_card extends StatelessWidget {
  late Color kolor;
  final Widget cardChild;

  reusable_card({required this.kolor, required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: kolor, borderRadius: BorderRadius.circular(15)),
    );
  }
}