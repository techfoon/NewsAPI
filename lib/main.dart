import 'package:flutter/material.dart';
import 'package:news_api/ui/bottomNav.dart';
import 'package:news_api/ui/ui_modules/home.dart';
import 'package:news_api/ui/ui_modules/login.dart';
import 'package:news_api/ui/ui_modules/postview.dart';
import 'package:news_api/ui/ui_modules/settings.dart';
import 'package:news_api/ui/ui_modules/signup.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Signup());
  }
}
