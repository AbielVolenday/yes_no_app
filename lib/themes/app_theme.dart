import 'package:flutter/material.dart';

const List<MaterialColor> _colors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.indigo,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0 && selectedColor < _colors.length,
          "Select a color between 0 and ${_colors.length - 1}",
        );

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colors[selectedColor],
      // brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        backgroundColor: _colors[selectedColor],
      ),
    );
  }
}
