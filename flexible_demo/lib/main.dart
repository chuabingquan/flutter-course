import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flexible Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flexible Demo')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                height: 100,
                child: Text('Item 1'),
                color: Colors.red),
            Flexible(
              flex: 5,
              fit: FlexFit.tight,
              child: Container(
                  height: 100,
                  child: Text('Item 2'),
                  color: Colors.blue),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Container(
                  height: 100,
                  child: Text('Item 3'),
                  color: Colors.orange),
            ),
          ],
        ));
  }
}
