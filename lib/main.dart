import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar'),
          ),
          body: Center(
              child: Container(
                  width: 150,
                  height: 100,
                  color: Colors.lightBlue,
                  child: Text(
                    'Saya sedang mengasah kemampuan flutter saya',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 20),
                  )))),
    );
  }
}
