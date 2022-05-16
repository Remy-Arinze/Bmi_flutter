import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  String title;
  String measure;
  String initValue;
  Function tapIncrease;
  Function tapDecrease;
  Reusable({
    required this.title,
    required this.measure,
    required this.initValue,
    required this.tapIncrease,
    required this.tapDecrease,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: kStyleTextTitle,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                initValue,
                style: KBigText,
              ),
              Text(
                measure,
                style: kStyleTextTitle,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  tapDecrease();
                },
                child: Container(
                  child: Icon(Icons.remove),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.yellow),
                ),
              ),
              GestureDetector(
                onTap: () {
                  tapIncrease();
                },
                child: Container(
                  child: Icon(Icons.add),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.yellow),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
