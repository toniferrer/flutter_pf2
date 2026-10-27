import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/personal_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
    routes: {
      '/edit':(context) => PersonalPage(),
    },
  ));
}