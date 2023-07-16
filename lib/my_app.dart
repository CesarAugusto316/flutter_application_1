import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void onPress() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(0),
        home: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.amber[400],
            centerTitle: true,
            elevation: 2,
            title: const Text('YesNo App'),
          ),
          body: Center(
            child: FilledButton(
                onPressed: onPress,
                child: Text(
                  'click me'.toUpperCase(),
                )),
          ),
        ));
  }
}
