import 'package:flutter/material.dart';
import 'package:toku/Components/Category_items.dart';
import 'package:toku/Screens/Colors.dart';
import 'package:toku/Screens/FamilyMembers.dart';
import 'package:toku/Screens/NumbersPage.dart';
import 'package:toku/Screens/phrasesPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Toku"),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: "Numbers",
            color: Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembers();
              }));
            },
            text: "Family Members",
            color: Color(0xff609244),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Colors_screen();
                },
              ));
            },
            text: "Colors",
            color: Color(0xff79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Phrases();
                },
              ));
            },
            text: 'Phrases',
            color: Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}
