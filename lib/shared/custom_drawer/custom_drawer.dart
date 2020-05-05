import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme_switcher/stores/settings.dart';
import 'package:provider_theme_switcher/utils/themes.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Text(
                'Theme Switcher',
                style: TextStyle(fontSize: 32.0),
              ),
            ),
            accountEmail: Text('by Kounex'),
          ),
          Consumer<SettingsStore>(
            builder: (context, settingsStore, child) => Column(
              children: Themes.values
                  .map(
                    (theme) => RaisedButton(
                      child: Text(theme.name),
                      onPressed: settingsStore.currentTheme != theme
                          ? () => settingsStore.changeCurrentTheme(theme)
                          : null,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
