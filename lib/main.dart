import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Latihan Animated Container'),
          ),
          body: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                color: Color.fromARGB(
                  255,
                  random.nextInt(255),
                  random.nextInt(255),
                  random.nextInt(255),
                ),
                duration: Duration(seconds: 1),
                width: 50.0 + random.nextInt(100),
                height: 50.0 + random.nextInt(100),
              ),
            ),
          )),
    );
  }
}
