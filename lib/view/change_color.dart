import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'app changed color'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _tema = "black";
  Color _tema1 = Colors.red;
  Color _tema2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _changeColor() {
    setState(() {
      if (_tema1 == Colors.red) {
        _tema1 = Colors.black;
      } else {
        _tema1 = Colors.red;
      }
      _tema2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('vamo a cambiar de color',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: _tema2)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _changeColor,
          backgroundColor: Colors.red,
          child: const Icon(Icons.ads_click_outlined)),
    );
  }
}
