import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutter/constants.dart';
import 'package:bmi_calculator_flutter/utils.dart';

class Results extends StatelessWidget {
  String getStatus;
  String getverdict;
  String getBmi;

  Results(
      {required this.getStatus,
      required this.getverdict,
      required this.getBmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Results',
          style: kStyleTextTitle,
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF3a3a3a),
              borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                getStatus,
                style: kStyleTextTitle,
              ),
              Text(
                getBmi,
                style: KBigText,
              ),
              Text(
                getverdict,
                style: kStyleTextTitle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
