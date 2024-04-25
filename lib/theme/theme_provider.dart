import 'package:dek_mhob/theme/dart_mode.dart';
import 'package:dek_mhob/theme/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeMode = lightTheme;

  ThemeData get themeData => _themeMode;

  bool get isDarkMode => _themeMode == darkTheme;

  set themeData(ThemeData themeData) {
    _themeMode = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    _themeMode = _themeMode == darkTheme ? lightTheme : darkTheme;
    notifyListeners();
  }
}
