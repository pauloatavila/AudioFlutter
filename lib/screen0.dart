import 'package:flutter/material.dart';

class Screen0 extends StatelessWidget {

  FlatButton buildButton({Color color, String name, String screen, BuildContext context}) {
    return FlatButton(
        color: color,
        textColor: Colors.white,
        child: Text(name),
        onPressed: () {
          Navigator.pushNamed(context, '/$screen');
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7093DB),
        title: Text('Sons de animais'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(color: Colors.blue, name: 'Animais aquáticos', screen: 'first', context: context),
              buildButton(color: Color(0xFFFF7F00), name: 'Animais domésticos', screen: 'second', context: context),
              buildButton(color: Colors.green, name: 'Animais silvestres', screen: 'third', context: context),
            ],
          ),
        )
      ),
    );
  }
}

