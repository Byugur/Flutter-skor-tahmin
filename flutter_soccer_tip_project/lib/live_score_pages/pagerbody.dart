import 'package:flutter/material.dart';
import 'package:flutter_soccer_tip_project/stats/goalstat.dart';
import 'package:flutter_soccer_tip_project/live_score_pages/matchtile.dart';
import 'package:flutter_soccer_tip_project/stats/teamstat.dart';
import 'package:flutter_soccer_tip_project/model/futbol_model.dart';

Widget PageBody(List<SoccerMatch> allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStat(
                  "Ev Sahibi",
                  allmatches[0].home.logoUrl,
                  allmatches[0].home.name,
                ),
                goalStat(allmatches[0].fixture.status.elapsedTime,
                    allmatches[0].goal.home, allmatches[0].goal.away),
                teamStat(
                  "Deplasman",
                  allmatches[0].away.logoUrl,
                  allmatches[0].away.name,
                )
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFFAFAFA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: (Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Maçlar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return matchTile(allmatches[index]);
                    },
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    ],
  );
}
