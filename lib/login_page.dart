import 'package:flutter/material.dart';
import 'package:flutter_erico_1/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('LoginPage'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => MainPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
