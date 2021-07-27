import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor = Colors.black;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan SizedBox'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: Colors.red,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.red,
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.grey.withOpacity(0.3),
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.red,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: Colors.amber,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.amber,
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.grey.withOpacity(0.3),
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.amber,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: Colors.purple,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.purple,
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.grey.withOpacity(0.3),
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 100,
                    height: 100,
                    child: Material(
                      color: Colors.amber,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        width: 200,
                        height: 200,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ))
                    : SizedBox(
                        width: 200,
                        height: 200,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                          elevation: 3,
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
