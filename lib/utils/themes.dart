import 'package:flutter/material.dart';

enum Themes {
  /// Default light theme
  DEFAULT,

  /// Default dark theme
  DARK,

  /// Whatever custom theme you want
  /// (this sample is really ugly, please dont use it)
  CUSTOM
}

/// Since we have extension methods and those work
/// on enums as well, we can make use of this feature
/// to make accessing different themes type-safe and
/// support intellisense in a short and easy way
extension ThemeFunctions on Themes {
  ThemeData get themeData => {
        Themes.DEFAULT: ThemeData.light().copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
        ),
        Themes.DARK: ThemeData.dark().copyWith(
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: Colors.black,
            backgroundColor: Colors.tealAccent,
          ),
        ),
        Themes.CUSTOM: ThemeData.dark().copyWith(
          primaryColor: Colors.purple,
          accentColor: Colors.redAccent,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: Colors.white,
            backgroundColor: Colors.purple,
          ),
          scaffoldBackgroundColor: Colors.deepOrangeAccent,
          backgroundColor: Colors.deepOrangeAccent,
          canvasColor: Colors.deepOrangeAccent,
          cardColor: Colors.purple,
        ),
      }[this];

  String get name => const {
        Themes.DEFAULT: 'Default',
        Themes.DARK: 'Dark',
        Themes.CUSTOM: 'Custom',
      }[this];
}
