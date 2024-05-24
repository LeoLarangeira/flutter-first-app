import 'package:flutter/material.dart';
import 'package:mbox_teste/pages/counter_page.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: CounterPage(),
    );
  }
}
