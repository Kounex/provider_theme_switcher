import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_theme_switcher/shared/basic_card/basic_card.dart';
import 'package:provider_theme_switcher/shared/custom_drawer/custom_drawer.dart';
import 'package:provider_theme_switcher/stores/settings.dart';
import 'package:provider_theme_switcher/utils/themes.dart';
import 'package:provider_theme_switcher/views/home/widgets/welcome_icon.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Home'),
            actions: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0, right: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Current Theme:'),
                    Consumer<SettingsStore>(
                      builder: (context, settingsStore, child) =>
                          Text(settingsStore.currentTheme.name),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                WelcomeIcon(),
                BaseCard(
                  title: 'Greetings!',
                  child: Text(
                      'This mini app serves as an example on how a real project may look like (structure wise) as well as make use of very basic Provider logic to enable dynamic theming.\n\nHave fun!'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
