import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme_switcher/stores/settings.dart';
import 'package:provider_theme_switcher/utils/routing_helper.dart';
import 'package:provider_theme_switcher/utils/themes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SettingsStore>(
      create: (_) => SettingsStore(),
      child: Consumer<SettingsStore>(
        builder: (context, settingsStore, child) => MaterialApp(
          theme: settingsStore.currentTheme.themeData,
          routes: RoutingHelper.routes,
          initialRoute: AppRoutingKeys.HOME.route,
        ),
      ),
    );
  }
}
