import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //play sound function
    void playSound(int snn) {
      final player = AudioCache();
      player.play('note$snn.wav');
    }

    //expended function about optimization
    Expanded buildKey({Color color, int snn}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(snn);
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.blue, snn: 1),
              buildKey(color: Colors.blueGrey, snn: 2),
              buildKey(color: Colors.yellow, snn: 3),
              buildKey(color: Colors.green, snn: 4),
              buildKey(color: Colors.teal, snn: 5),
              buildKey(color: Colors.red, snn: 6),
              buildKey(color: Colors.orange, snn: 7),
            ],
          ),
        ),
      ),
    );
  }
}
