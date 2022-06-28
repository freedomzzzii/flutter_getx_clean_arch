import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../applications/controllers/counter/counter_controller.dart';
import '../widgets/bottombar_widget.dart';

class AScreen extends StatelessWidget {
  AScreen({Key? key}) : super(key: key);

  int _counter = 0;

  // final CountNumber _countNumber = CountNumber();
  final _countNumber = Get.find<CounterImplController>();

  _incrementCounter() {
    print('increment');
    _countNumber.increment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AAA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
              key: const Key('counter'),
            ),
            GetBuilder<CounterImplController>(
              init: _countNumber, // INIT IT ONLY THE FIRST TIME
              builder: (_) => Text(
                'counter: ${_.state.summary}',
                key: const Key('summary'),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/b'),
              child: const Text('BBB'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        key: const Key('buttonIncrement'),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomBar(currentTabIndex: 0),
    );
  }
}
