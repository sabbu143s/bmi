// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.icon, required this.onPress});
  final IconData? icon;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:onPress,
      child: Icon(icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      fillColor: Colors.grey,
      constraints: BoxConstraints.tightFor(height: 50, width: 50),
      elevation: 6,
    );
  }
}
