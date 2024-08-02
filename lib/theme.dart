import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      background: Colors.white,
      // surface: Colors.white,
      brightness: Brightness.light,
      seedColor: Colors.orange,
    ),
  );
}
