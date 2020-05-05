import 'package:flutter/cupertino.dart';
import 'package:provider_theme_switcher/utils/themes.dart';

class SettingsStore with ChangeNotifier {
  Themes currentTheme = Themes.DEFAULT;

  void changeCurrentTheme(Themes theme) {
    this.currentTheme = theme;
    this.notifyListeners();
  }
}
