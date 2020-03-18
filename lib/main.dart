import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

 Expanded soundplay({Color color,int sound})
  {
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: ()
        {
          final player = AudioCache();
          player.play("note$sound.wav");
        },
      ),
    );
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            soundplay(color: Colors.red,sound:1),
            soundplay(color: Colors.orange,sound:2),
            soundplay(color: Colors.yellow,sound:3),
            soundplay(color: Colors.teal,sound:4),
            soundplay(color: Colors.green,sound:5),
            soundplay(color: Colors.blue,sound:6),
            soundplay(color: Colors.purple,sound:7),

          ],
        ),
      ),
    ));
  }
}