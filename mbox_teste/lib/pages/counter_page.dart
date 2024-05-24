import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mbox_teste/store/counter/counter.dart';

class CounterPage extends StatelessWidget {
  final Counter counter = Counter();

  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter and Mobx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter:',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Observer(
                builder: (_) => Text(
                      '${counter.count}',
                      style: const TextStyle(fontSize: 30),
                    )),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    counter.increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  height: 50,
                ),
                FloatingActionButton(
                    onPressed: () {
                      counter.decrement();
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.minimize))
              ],
            )
          ],
        ),
      ),
    );
  }
}
