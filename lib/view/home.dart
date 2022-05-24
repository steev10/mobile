import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('mi app'),
          backgroundColor: Colors.black,
        ),
        body: const Center(
          child: Text('hola mundo'),
        ));
  }
}
