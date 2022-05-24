import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _value = 1;
  void _count() {
    setState(
      () {
        _value++;
        print("value: ");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const siseText = TextStyle(fontSize: 50);
    return Scaffold(
      appBar: AppBar(
        title: const Text('mi app'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'number tap',
              style: TextStyle(fontSize: 50, color: Colors.yellow),
            ),
            Text(
              '$_value',
              style: siseText,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _count,
          backgroundColor: Colors.black,
          child: const Icon(Icons.add)),
      //const Center(
      //child: Text('contador'),)
    );
  }
}
