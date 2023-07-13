import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter project01',
        home: Home()));
  }
}
