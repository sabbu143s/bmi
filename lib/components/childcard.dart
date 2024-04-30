// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:bmi_app/components/constants.dart";
import "package:flutter/material.dart";

class ChildCard extends StatelessWidget {
  final Widget icon;
  final String text;
  const ChildCard({super.key,required this.icon,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        icon,
        Text(text,style: textstyle,),
      ],
    );
  }
}
