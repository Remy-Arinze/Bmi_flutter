import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/widgets/container.dart';
import 'package:flutter/services.dart';
import 'Results.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/utils.dart';
import 'dart:math';
import 'package:bmi_calculator_flutter/widgets/Reusable.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String HeightValue = '5.4';
  Color activeMale = Colors.black;
  int ageValue = 20;
  int weightValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bmi-Calculator',
            style: TextStyle(color: Colors.yellow),
          )),
      body: Column(
        children: [
          Expanded(
              child: MyCard(
            OnTap: () {},
            cardColor: activeMale,
            cardChild: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.male,
                        size: 100,
                        color: Colors.yellow,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        size: 100,
                        color: Colors.yellow,
                      ),
                      Text(
                        'FEMALE',
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: MyCard(
            OnTap: () {},
            cardChild: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Heigth',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.yellowAccent),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        HeightValue,
                        textAlign: TextAlign.center,
                        style: KBigText,
                      ),
                      Text(
                        'ft',
                        style: TextStyle(color: Colors.yellowAccent),
                      )
                    ],
                  ),
                  Slider(
                      value: double.parse(HeightValue),
                      inactiveColor: Colors.grey,
                      activeColor: Colors.yellow,
                      thumbColor: Colors.yellow,
                      onChanged: (newVal) {
                        setState(() {
                          HeightValue = newVal.toStringAsFixed(1);
                        });
                      },
                      min: 3.0,
                      max: 9.0)
                ],
              ),
            ),
          )),
          Expanded(
              child: MyCard(
            cardChild: Row(
              children: [
                Expanded(
                  child: Reusable(
                    title: 'Weight',
                    measure: 'kg',
                    initValue: weightValue.toString(),
                    tapIncrease: () {
                      setState(() {
                        weightValue++;
                      });
                    },
                    tapDecrease: () {
                      setState(() {
                        weightValue--;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Reusable(
                    title: 'Age',
                    measure: 'yrs',
                    initValue: ageValue.toString(),
                    tapIncrease: () {
                      setState(() {
                        ageValue++;
                      });
                    },
                    tapDecrease: () {
                      setState(() {
                        ageValue--;
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          GestureDetector(
            onTap: () {
              Weight calc = Weight(
                  weight: weightValue.toInt(),
                  height: double.parse(HeightValue));

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Results(
                            getStatus: calc.getStatus(),
                            getverdict: calc.getVerdict(),
                            getBmi: calc.getBmi(),
                          )));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(color: Colors.yellow),
              child: Center(
                child: Text(
                  'Calculate',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
