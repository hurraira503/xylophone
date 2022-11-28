import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playsound(int soundnumber) {
    Audio.load('assets/assets_note$soundnumber.wav')
      ..play()
      ..dispose();
  }

  Expanded buildkeys({Color color = Colors.white, int soundnumber = 0}) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playsound(soundnumber);
          },
          style: TextButton.styleFrom(backgroundColor: color),
          child: Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildkeys(color: Colors.black, soundnumber: 1),
            buildkeys(color: Colors.brown.shade700, soundnumber: 2),
            buildkeys(color: Colors.yellow, soundnumber: 3),
            buildkeys(color: Colors.blueAccent, soundnumber: 4),
            buildkeys(color: Colors.blue.shade900, soundnumber: 5),
            buildkeys(color: Colors.pink, soundnumber: 6),
            buildkeys(color: Colors.deepOrangeAccent, soundnumber: 7),
          ]),
        ),
      ),
    );
  }
}
