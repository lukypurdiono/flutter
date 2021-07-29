import 'package:flutter/material.dart';
import 'package:flutter_erico_1/main_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Ini adalah detail page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MainPage()),
              );
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
