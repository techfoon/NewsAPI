import 'package:flutter/material.dart';
import 'package:news_api/ui/bottomNav.dart';
import 'package:news_api/ui/ui_modules/postview.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  //   home: BottomNav()
  home: Postview(),
    );
  }
}
