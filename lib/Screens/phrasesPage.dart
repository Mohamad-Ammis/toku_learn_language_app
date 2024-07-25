import 'package:flutter/material.dart';
import 'package:toku/Components/phraseslist.dart';
import 'package:toku/models/PhrasesField.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});
  final List<PhrasesField> ph = const [
    PhrasesField(
        jpName: "Kimasu ka",
        enName: "Are you coming",
        soundPath: "sounds/phrases/are_you_coming.wav"),
    PhrasesField(
        jpName: "Wasurezu ni kōdoku shite kudasai",
        enName: "Dont Forget to Subscribe",
        soundPath: "sounds/phrases/dont_forget_to_subscribe.wav"),
    PhrasesField(
        jpName: "Bassai wa dōdesu ka",
        enName: "How are you felling",
        soundPath: "sounds/phrases/how_are_you_feeling.wav"),
    PhrasesField(
        jpName: "Watashi wa anime ga daisukidesu",
        enName: "I Love anime",
        soundPath: "sounds/phrases/i_love_anime.wav"),
    PhrasesField(
        jpName: "Puroguramingu ga daisukidesu",
        enName: "I love programming",
        soundPath: "sounds/phrases/i_love_programming.wav"),
    PhrasesField(
        jpName: "Anata no namae wa nandesuka",
        enName: "What is your name",
        soundPath: "sounds/phrases/what_is_your_name.wav"),
    PhrasesField(
        jpName: "Doko ni iku no",
        enName: "Where are you going",
        soundPath: "sounds/phrases/where_are_you_going.wav"),
    PhrasesField(
        jpName: "Hai, kimasu",
        enName: "Yes i am coming",
        soundPath: "sounds/phrases/yes_im_coming.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrases"),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return phraseslist(
            number: ph[index],
            color: Color(0xff50ADC7),
          );
        },
        itemCount: ph.length,
      ),
    );
  }
}
