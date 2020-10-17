import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class Screen2 extends StatelessWidget {

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
        backgroundColor: Color(0xFFFF7F00),
        title: Text('Animais domésticos'),
      ),
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    buildKey(color: Color(0xFFFF9900), animal: 'Cachorro', image: 'cachorro'),
                    buildKey(color: Color(0xFFFFCC33), animal: 'Gato', image: 'gato'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildKey(color: Color(0xFFFFCC33), animal: 'Coelho', image: 'coelho'),
                    buildKey(color: Color(0xFFFF9900), animal: 'Galinha', image: 'galinha'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    buildKey(color: Color(0xFFFF9900), animal: 'Papagaio', image: 'papagaio'),
                    buildKey(color: Color(0xFFFFCC33), animal: 'Hamster', image: 'porquinho_da_india'),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}
