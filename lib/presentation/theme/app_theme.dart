import 'package:flutter/material.dart';

const List<Color> _colors = [
  Colors.indigo,
  Colors.lime,
  Colors.pink,
  Colors.purple,
];

class AppTheme {
  ThemeData theme({int selectColor = 1, Brightness theme = Brightness.light}) {
    assert(selectColor >= 0 && selectColor <= (_colors.length - 1),
        'Index not allowed');

    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colors[selectColor],
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 18)),
        brightness: theme,
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(16)),
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w800)))));
  }
}
