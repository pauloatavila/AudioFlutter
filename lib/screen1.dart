import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Screen1 extends StatelessWidget {

  void playSound(String soundName) {
    final player = AudioCache();
    player.play('$soundName.mp3');
  }

  Expanded buildKey({Color color, String animal, String image}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(image);
          },
      child:
          item(animal: animal, image: image),
      ),
    );
  }

  Column item({String animal, String image}) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'assets/$image.png',
            width: 68,
            height: 68,
            fit: BoxFit.scaleDown,
          ),
        ),
        Container(
            padding: const EdgeInsets.all(8),
            child: Text(animal,
              textScaleFactor: 1.3,)
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Animais aquáticos'),
      ),
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    buildKey(color: Color(0xFFCCFFFF), animal: 'Baleia', image: 'baleia'),
                    buildKey(color: Color(0xFF66FFFF), animal: 'Tubarão', image: 'tubarao'),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}
