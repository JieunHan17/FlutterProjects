import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int _BallState = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text('Ask Me Anything')),
        body: Container(
            child: SafeArea(
                child: Center(
          child: TextButton(
            onPressed:() {
              print('I got clicked');
              setState(() {
                _BallState = Random().nextInt(5) + 1;
              });
            }, child: Image(image: AssetImage('images/ball$_BallState.png'))),
        ))));
  }
}
