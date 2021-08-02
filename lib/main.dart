import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan TextField'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                  prefixText: 'Name: ',
                  prefixStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                  hintText: 'Nama lengkap anda',
                  labelText: 'Nama lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                obscureText: true, //apabila password yg diinput
                maxLength: 5, // panjang maksimal 5 karakter
                maxLines: 1, //apabila sudah mentok, cuma ada 1 baris
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text),
            ],
          ),
        ),
      ),
    );
  }
}
