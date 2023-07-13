import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
            onPressed: () => print('hello'), child: const Icon(Icons.plus_one)),
        body: const Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(),
                Text(
                  "Hot reload!!",
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.sentiment_very_satisfied),
              ]),
        )));
  }
}
