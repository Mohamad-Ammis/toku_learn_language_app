import 'package:flutter/material.dart';
import 'package:toku/Components/ListItem.dart';
import 'package:toku/models/Field.dart';

class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});
  final List<Field> familyperson = const [
    Field(
        image: "assets/images/family_members/family_father.png",
        jpName: "Chichioya",
        enName: "Father",
        soundPath: "sounds/family_members/father.wav"),
    Field(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "Daughter",
        soundPath: "sounds/family_members/daughter.wav"),
    Field(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "ojisan",
        enName: "Grand Father",
        soundPath: "sounds/family_members/grandf.wav"),
    Field(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grand Mother",
        soundPath: "sounds/family_members/grandmother.wav"),
    Field(
        image: "assets/images/family_members/family_mother.png",
        jpName: "Hahoya",
        enName: "Mother",
        soundPath: "sounds/family_members/mother.wav"),
    Field(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "Nisan",
        enName: "Older Brother",
        soundPath: "sounds/family_members/olderbrother.wav"),
    Field(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "Older Sister",
        soundPath: "sounds/family_members/oldersister.wav"),
    Field(
        image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "Son",
        soundPath: "sounds/family_members/son.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            number: familyperson[index],
            color: Color(0xff609244),
          );
        },
        itemCount: familyperson.length,
      ),
    );
  }
}
