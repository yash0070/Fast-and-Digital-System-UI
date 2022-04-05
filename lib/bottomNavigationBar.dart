import 'package:flutter/material.dart';
import 'package:flutter_app_1/CategoryPage.dart';
import 'package:flutter_app_1/HomePage.dart';

class BottomNavBar extends StatefulWidget {
  int currentIndex = 0;
  BottomNavBar(this.currentIndex);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _childrens = [
    HomePage(),
    CategoryScreen(),
    Container(
      color: Colors.deepPurple,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childrens[widget.currentIndex],
      bottomNavigationBar: Container(
        height: 60.0,
        margin: EdgeInsets.all(20.0),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black.withOpacity(0.5),
            onTap: onTabTapped,
            currentIndex: widget.currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'text1',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'text1',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'text1',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'text1',
              ),
            ]),
      ),
    );
  }
}
