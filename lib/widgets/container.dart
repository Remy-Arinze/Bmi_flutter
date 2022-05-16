import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard(
      {Key? key,
      required this.cardChild,
      this.cardColor = Colors.black,
      this.OnTap})
      : super(key: key);

  final Widget cardChild;
  final Color cardColor;
  final OnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        child: cardChild,
        color: cardColor,
      ),
    );
  }
}
