import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void playSound(int num){
    final player = AudioCache();
      player.play('assets_note$num.wav');
    }


  Expanded expandedWidget({Color? color, int? soundNum}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          playSound(soundNum!);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xoly Phone'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            expandedWidget(
              color: Colors.yellow,
              soundNum: 7
            ),
            expandedWidget(
              color: Colors.blue,soundNum: 1
            ),
            expandedWidget(
              color: Colors.red,soundNum: 2
            ),
            expandedWidget(
              color: Colors.green,soundNum: 3
            ),
            expandedWidget(
              color: Colors.orange,soundNum: 4
            ),
            expandedWidget(
              color: Colors.purpleAccent,soundNum: 5
            ),
            expandedWidget(
              color: Colors.cyanAccent,soundNum: 6
            ),
          ],
        ),
      ),
    );
  }
}
