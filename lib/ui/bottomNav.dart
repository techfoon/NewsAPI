import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int navIndex=0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("abc"),
      ),
      bottomNavigationBar: NavigationBar(

      elevation: 5,
      
      indicatorColor:Colors.transparent,
      indicatorShape:CircleBorder(),
        destinations: [


          
          
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home",

          selectedIcon: Icon(
            

Icons.home, color: Colors.blue,



          ) ,
          
          ),
          NavigationDestination(icon: Icon(Icons.explore_outlined), label: "Exploar"),
          NavigationDestination(icon: Icon(Icons.bookmark_outlined), label: "Saved"),
          NavigationDestination(icon: Icon(Icons.settings_outlined), label: "Settings"),
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
