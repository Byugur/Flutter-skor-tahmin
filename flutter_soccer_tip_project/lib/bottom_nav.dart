// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_soccer_tip_project/live_score_pages/live_score_page.dart';
import 'package:flutter_soccer_tip_project/next_matches_pages/next_matches_page.dart';
import 'package:flutter_soccer_tip_project/leagues_pages/leagues_page.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Next_Matches_Page(),
    Live_Score_Page(),
    LeaguesPage(),
  ];
  List<Widget> WidgetText = <Widget>[
    Text(
      'Maçlar',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      "Canlı Sonuçlar",
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Ligler',
      style: TextStyle(color: Colors.black),
    ),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        title: WidgetText.elementAt(_selectedIndex),
        centerTitle: true,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            title: Text(
              "Maçlar",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse_rounded),
            title: Text(
              "Canlı Sonuçlar",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart_rounded),
            title: Text(
              "Ligler",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
