import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/personal_screen.dart';
import 'screens/widgets_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    routes: {
      '/edit':(context) => PersonalPage(),
      '/widgets':(context) => WidgetsScreen(),
    },
  ));
}