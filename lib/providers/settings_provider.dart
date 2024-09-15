// lib/providers/settings_provider.dart
import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  String _currency = '\$';
  ThemeMode _themeMode = ThemeMode.system;

  String get currency => _currency;
  ThemeMode get themeMode => _themeMode;

  void setCurrency(String currency) {
    _currency = currency;
    notifyListeners();
  }

  void setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}

