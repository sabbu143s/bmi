// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import "package:bmi_app/components/constants.dart";
import "package:flutter/material.dart";

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({super.key, required this.dest});
  final VoidCallback dest;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: dest,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        child: Text(
          "Calculate Your BMI ",
          style: textstyle,
        ),
        width: double.infinity,
        color: Color.fromARGB(255, 246, 93, 144),
        height: 50,
      ),
    );
  }
}
