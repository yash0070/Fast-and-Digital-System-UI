import 'package:flutter/material.dart';
import 'package:flutter_app_1/CategoryPage.dart';
import 'package:flutter_app_1/HomePage.dart';
import 'package:flutter_app_1/bottomNavigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(0),
    );
  }
}
