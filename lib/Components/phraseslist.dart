import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku/models/PhrasesField.dart';

class phraseslist extends StatelessWidget {
  final PhrasesField number;
  final Color color;
  const phraseslist({super.key, required this.number, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                final player = AudioPlayer();
                player.play(AssetSource(number.soundPath));
              } catch (ex) {
                print('${number.soundPath} is not working');
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
