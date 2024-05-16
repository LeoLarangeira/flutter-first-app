import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomNumber = 0;

  int _genRandomNumber() {
    Random newNumber = Random();
    return newNumber.nextInt(1000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        title: const Text('App  Counter'),
      ),
      body: Center(
        child: Text(randomNumber.toString()),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              randomNumber = _genRandomNumber();
            });
          },
          backgroundColor: Colors.amber[700],
          child: const Icon(Icons.add)),
    );
  }
}
