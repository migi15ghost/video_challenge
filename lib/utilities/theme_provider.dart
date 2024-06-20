import 'package:flutter/material.dart';
import "package:video_challenge/utilities/app_theme.dart";

//import 'package:/utilities/AppTheme.dart';

// Crea una clase que gestionará tu tema actual
class ThemeProvider with ChangeNotifier {
  ThemeProvider({bool isLightTheme = true}) {
    _themeData =
    isLightTheme ? AppThemeData.lightTheme : AppThemeData.darkTheme;
  }
  late ThemeData _themeData;

  ThemeData get themeData => _themeData;

  void swapTheme() {
    if (_themeData == AppThemeData.lightTheme) {
      _themeData = AppThemeData.darkTheme;
    } else {
      _themeData = AppThemeData.lightTheme;
    }
    notifyListeners();
  }
}