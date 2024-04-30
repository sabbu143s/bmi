// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unrelated_type_equality_checks, sort_child_properties_last, unused_local_variable

import "package:bmi_app/components/calculation.dart";
import "package:bmi_app/components/cardtile.dart";
import "package:bmi_app/components/childcard.dart";
import "package:bmi_app/components/constants.dart";
import "package:bmi_app/components/roundbutton.dart";
import "package:bmi_app/pages/respage.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

enum Gender { male, female, no }

int height = 160;
int weight = 55;
int age = 18;

class _HomePageState extends State<HomePage> {
  Gender sg = Gender.no;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "BMI",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: CardTile(
                    onPress: () {
                      setState(() {
                        sg = Gender.male;
                      });
                    },
                    Colour: sg == Gender.male ? cs1 : cs,
                    childcard: ChildCard(
                      icon: Icon(
                        Icons.male_outlined,
                        color: Colors.white,
                        size: 80,
                      ),
                      text: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: CardTile(
                    onPress: () {
                      setState(() {
                        sg = Gender.female;
                      });
                    },
                    Colour: sg == Gender.female ? cs1 : cs,
                    childcard: ChildCard(
                        icon: Icon(
                          Icons.female_outlined,
                          color: Colors.white,
                          size: 80,
                        ),
                        text: "Female"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: CardTile(
                childcard: Column(
                  children: [
                    Text(
                      "Height",
                      style: textstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(height.toString(), style: textstyle2),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "CM",
                          style: textstyle,
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 280,
                        onChanged: (double newheight) {
                          setState(() {
                            height = newheight.round();
                          });
                        })
                  ],
                ),
                Colour: cs,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardTile(
                    childcard: Column(
                      children: [
                        Text(
                          "WEIGHT",
                          style: textstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: textstyle2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    Colour: cs,
                  ),
                ),
                Expanded(
                  child: CardTile(
                    childcard: Column(
                      children: [
                        Text(
                          "AGE",
                          style: textstyle,
                        ),
                        Text(
                          age.toString(),
                          style: textstyle2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    Colour: cs,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                CalculatorBrain cal =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Respage(
                      bmires: cal.calculatorBmi(),
                      interpret: cal.getRes(),
                      resulttext: cal.getint(),
                    ),
                  ),
                );
              },
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
            )
          ],
        ),
      ),
    );
  }
}
