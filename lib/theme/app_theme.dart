import 'package:flutter/material.dart';

const List<Color> _colors = [
  Colors.indigo,
  Colors.lime,
  Colors.pink,
  Colors.purple,
];

class AppTheme {
  ThemeData theme([int colorIndex = 1]) {
    assert(colorIndex >= 0 && colorIndex <= (_colors.length - 1),
        'Index not allowed');

    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colors[colorIndex],
        brightness: Brightness.light,
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(16)),
                textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w800)))));
  }
}
