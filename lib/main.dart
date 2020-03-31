import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              XylophoneButton(
                soundNumber: 1,
                buttonColor: Colors.red,
              ),
              XylophoneButton(
                soundNumber: 2,
                buttonColor: Colors.orange,
              ),
              XylophoneButton(
                soundNumber: 3,
                buttonColor: Colors.yellow,
              ),
              XylophoneButton(
                soundNumber: 4,
                buttonColor: Colors.green,
              ),
              XylophoneButton(
                soundNumber: 5,
                buttonColor: Colors.teal,
              ),
              XylophoneButton(
                soundNumber: 6,
                buttonColor: Colors.blue,
              ),
              XylophoneButton(
                soundNumber: 7,
                buttonColor: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  final int soundNumber;
  final MaterialColor buttonColor;

  const XylophoneButton({this.soundNumber, this.buttonColor});

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: null,
        onPressed: () {
          playSound(this.soundNumber);
        },
        color: this.buttonColor,
      ),
    );
  }
}
