import 'package:flutter/material.dart';
import 'package:toku/Components/ListItem.dart';
import 'package:toku/models/Field.dart';

class Colors_screen extends StatelessWidget {
  const Colors_screen({super.key});
  final List<Field> colors = const [
    Field(
        image: "assets/images/colors/color_black.png",
        jpName: "Burakku",
        enName: "Black",
        soundPath: "sounds/colors/black.wav"),
    Field(
        image: "assets/images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "Brown",
        soundPath: "sounds/colors/brown.wav"),
    Field(
        image: "assets/images/colors/color_white.png",
        jpName: "Shiroi",
        enName: "White",
        soundPath: "sounds/colors/white.wav"),
    Field(
        image: "assets/images/colors/color_gray.png",
        jpName: "Gure",
        enName: "Gray",
        soundPath: "sounds/colors/gray.wav"),
    Field(
        image: "assets/images/colors/color_green.png",
        jpName: "Midori",
        enName: "Green",
        soundPath: "sounds/colors/green.wav"),
    Field(
        image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "Red",
        soundPath: "sounds/colors/red.wav"),
    Field(
        image: "assets/images/colors/yellow.png",
        jpName: "Hokori",
        enName: "Yellow",
        soundPath: "sounds/colors/yellow.wav"),
    Field(
        image: "assets/images/colors/color_black.png",
        jpName: "Burakku",
        enName: "Black",
        soundPath: "sounds/colors/black.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Colors"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(number: colors[index], color: Color(0xff79359F));
        },
        itemCount: colors.length,
      ),
    );
  }
}
