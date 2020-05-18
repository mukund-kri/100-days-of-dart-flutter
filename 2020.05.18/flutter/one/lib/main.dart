import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClickCounter(),
    );
  }
}

class ClickCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ClickCounterState();
}

class _ClickCounterState extends State<ClickCounter> {

  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Click Counter'),
      ),
      body: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'Count is $_count, tap to increase',
            textScaleFactor: 2.0,
          ),
        ),
        onTap: () {
          setState(() => _count++);
        },
      ),
    );
  }
}