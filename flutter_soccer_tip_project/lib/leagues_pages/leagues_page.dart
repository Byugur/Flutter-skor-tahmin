// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_soccer_tip_project/leagues_pages/tables_screen.dart';
import 'league_container.dart';

class LeaguesPage extends StatefulWidget {
  @override
  _LeaguesPageState createState() => _LeaguesPageState();
}

class _LeaguesPageState extends State<LeaguesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFAFAFA),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  GestureDetector(
                      child: LeagueContainer(image: 'assets/epl.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'PL'),
                            ));
                      }),
                  GestureDetector(
                      child: LeagueContainer(image: 'assets/bundesliga.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'BL1'),
                            ));
                      }),
                  GestureDetector(
                      child: LeagueContainer(image: 'assets/laliga.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'EPL'),
                            ));
                      }),
                  GestureDetector(
                      child: LeagueContainer(image: 'assets/liganos.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'PPL'),
                            ));
                      }),
                  GestureDetector(
                      child: LeagueContainer(image: 'assets/ligue1.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'FL1'),
                            ));
                      }),
                  GestureDetector(
                      child: LeagueContainer(image: 'assets/seriea.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'SA'),
                            ));
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
