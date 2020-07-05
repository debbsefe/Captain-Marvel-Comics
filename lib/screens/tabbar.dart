import 'package:captain_marvel/screens/home.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeTabState();
  }
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      HomePage(),
      HomePage(),
      HomePage(),
    ];

    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.black),
          child: BottomNavigationBar(
            onTap: onTabTapped,
            type: BottomNavigationBarType.shifting,
            currentIndex: _currentIndex,
            showUnselectedLabels: true,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                title: Text(
                  'OVERVIEW',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              new BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                title: Text('IN COMICS PROFILE',
                    style: TextStyle(color: Colors.grey)),
              ),
              new BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  title: Text('IN COMICS FULL REPORT',
                      style: TextStyle(color: Colors.grey))),
            ],
          ),
        ));
  }
}

//TODO:COLORED BORDERTOP FOR TAB
