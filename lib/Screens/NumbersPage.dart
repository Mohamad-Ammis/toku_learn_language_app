import 'package:flutter/material.dart';
import 'package:toku/Components/ListItem.dart';
import 'package:toku/models/Field.dart';

class NumbersPage extends StatelessWidget {
  final List<Field> numbers = const [
    Field(
        image: 'assets/images/numbers/number_one.png',
        jpName: "ichi",
        enName: "one",
        soundPath: "sounds/numbers/number_one_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_two.png',
        jpName: "Ni",
        enName: "two",
        soundPath: "sounds/numbers/number_two_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_three.png',
        jpName: "San",
        enName: "three",
        soundPath: "sounds/numbers/number_three_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_four.png',
        jpName: "Shi",
        enName: "Four",
        soundPath: "sounds/numbers/number_four_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_five.png',
        jpName: "Go",
        enName: "five",
        soundPath: "sounds/numbers/number_five_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_six.png',
        jpName: "Roku",
        enName: "six",
        soundPath: "sounds/numbers/number_six_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_seven.png',
        jpName: "Sebun",
        enName: "seven",
        soundPath: "sounds/numbers/number_seven_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_eight.png',
        jpName: "Hashi",
        enName: "eight",
        soundPath: "sounds/numbers/number_eight_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_nine.png',
        jpName: "Kyu",
        enName: "nine",
        soundPath: "sounds/numbers/number_nine_sound.mp3"),
    Field(
        image: 'assets/images/numbers/number_ten.png',
        jpName: "Ju",
        enName: "ten",
        soundPath: "sounds/numbers/number_ten_sound.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Color(0xffEF9235),
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}
