import 'package:flutter/material.dart';
import 'package:provider_theme_switcher/views/home/home.dart';

enum AppRoutingKeys { HOME }

extension AppRoutingKeysFunctioins on AppRoutingKeys {
  String get route => const {
        AppRoutingKeys.HOME: '/home',
      }[this];
}

class RoutingHelper {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutingKeys.HOME.route: (_) => HomeView(),
  };
}
