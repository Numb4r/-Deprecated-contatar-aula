import 'package:aula_online/app/shared/themes/app_themes.dart';
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;
  bool _isDark;

  bool get isDark => _isDark;

  set isDark(bool isDark) {
    _isDark = isDark;
  }

  ThemeChanger() {
    this._themeData = appThemeData["OrangeLight"];
    this._isDark = false;
  }
  getTheme() => _themeData;
  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  switchTheme() {
    setTheme(getTheme() == appThemeData["OrangeLight"]
        ? appThemeData["OrangeDark"]
        : appThemeData["OrangeLight"]);
    this.isDark = !this.isDark;
  }
}
