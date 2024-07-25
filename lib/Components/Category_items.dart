import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 24),
        child: Text(
          text!,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        color: color,
      ),
    );
  }
}
