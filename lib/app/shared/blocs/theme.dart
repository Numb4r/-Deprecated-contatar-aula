import 'package:aula_online/app/shared/themes/app_themes.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;
  ThemeChanger(this._themeData);
  getTheme() => _themeData;
  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  switchTheme() {
    setTheme(getTheme() == appThemeData["OrangeLight"]
        ? appThemeData["OrangeDark"]
        : appThemeData["OrangeLight"]);
  }
}
