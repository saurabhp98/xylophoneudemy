import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playmusic(int musicNum) {
    final player = AudioCache();
    player.play('note1.wav');
  }

  Expanded noteFunc({Color color, int noteVal}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteVal.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              noteFunc(color: Colors.red, noteVal: 1),
              noteFunc(color: Colors.orange, noteVal: 2),
              noteFunc(color: Colors.yellow, noteVal: 3),
              noteFunc(color: Colors.green, noteVal: 4),
              noteFunc(color: Colors.blue, noteVal: 5),
              noteFunc(color: Colors.indigo, noteVal: 6),
              noteFunc(color: Colors.purple[800], noteVal: 7),
            ],
          ),
        ),
      ),
    );
  }
}
