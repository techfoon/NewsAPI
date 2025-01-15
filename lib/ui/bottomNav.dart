import 'package:flutter/material.dart';
import 'package:news_api/ui/ui_modules/exploar.dart';
import 'package:news_api/ui/ui_modules/home.dart';
import 'package:news_api/ui/ui_modules/saved.dart';
import 'package:news_api/ui/ui_modules/settings.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int navIndex = 0;

  List<Widget> navItemList = [Home(), Exploar(), Saved(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navItemList[navIndex],
      bottomNavigationBar: NavigationBar(
        elevation: 5,
        indicatorColor: Colors.transparent,
        indicatorShape: CircleBorder(),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            selectedIcon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            label: "Exploar",
            selectedIcon: Icon(
              Icons.explore,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_outlined),
            label: "Saved",
            selectedIcon: Icon(
              Icons.bookmark,
              color: Colors.blue,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
            selectedIcon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          ),
        ],
        selectedIndex: navIndex,
        onDestinationSelected: (ValueKey) {
          navIndex = ValueKey;

          setState(() {});
        },
      ),
    );
  }
}
