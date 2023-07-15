import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 1;

  incremet() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[300],
          title: const Text(
            'Flutter Counter',
            textAlign: TextAlign.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: incremet, child: const Icon(Icons.plus_one)),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const FlutterLogo(size: 100),
                Text(
                  "$_counter",
                  style: const TextStyle(fontSize: 120),
                ),
                Text(_counter == 1 ? "click" : "clicks")
              ]),
        )));
  }
}
