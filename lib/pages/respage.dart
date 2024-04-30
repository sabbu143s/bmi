// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_app/components/constants.dart';
import 'package:flutter/material.dart';

class Respage extends StatelessWidget {
  const Respage({super.key, required this.bmires,required this.interpret,required this.resulttext});
  final String bmires;
  final String resulttext;
  final String interpret;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(
            "Your BMI",
            style: textstyle2,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: cs),
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                   interpret,
                    style: textstyle,
                  ),
                  Text(
                    bmires,
                    style: TextStyle(fontSize: 100),
                  ),
                  Text(resulttext,style: TextStyle(fontSize: 18, ),textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
