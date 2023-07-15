import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.lightBlue),
        debugShowCheckedModeBanner: false,
        title: 'flutter project01',
        home: const CounterScreen()));
  }
}
