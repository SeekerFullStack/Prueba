import 'package:flutter/material.dart';

class Style {
  static const Color _styleColor = Color(0xFFA20101); 

  static const List<Color> _availableColors = [
    _styleColor,
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.indigo,
    Colors.blueGrey,
  ];

  final int selectedColor;

  Style({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _availableColors.length,
            'selectedColor must be between 0 and ${_availableColors.length - 1}');

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _availableColors[selectedColor],
    );
  }
}
