// ignore_for_file: prefer_const_constructors

import 'package:bmi_app/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          sliderTheme: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(
                elevation: 4,
                enabledThumbRadius: 11,
              ),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 26),
              overlayColor: Color.fromARGB(255, 249, 141, 141),
              activeTrackColor: Colors.pinkAccent,
              inactiveTrackColor: Colors.grey,
              thumbColor: Colors.white,
              trackHeight: 2)),
      home: HomePage(),
      routes: {
        'homepage':(context) => HomePage(),
      },
    );
  }
}
