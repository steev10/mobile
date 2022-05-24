import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int value = 1;
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
                '$value',
                style: siseText,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value++;
            count();
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.check),
        )
        //const Center(
        //child: Text('contador'),)
        );
  }

  void count() {
    print('hi');
  }
}
