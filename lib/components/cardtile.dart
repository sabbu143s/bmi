// ignore_for_file: prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names

import "package:flutter/material.dart";

class CardTile extends StatelessWidget {
  
  const CardTile({super.key, this.childcard,required this.Colour , this.onPress});
  final Color Colour;
  final Widget? childcard;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        child: childcard,
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colour  ,
          borderRadius: BorderRadius.circular(8)
        ),
        height: 185,
        // width: 150,
      ),
    );
  }
}
