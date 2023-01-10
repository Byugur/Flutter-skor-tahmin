// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_soccer_tip_project/next_matches_pages/next_matches_tile.dart';
import 'package:flutter_soccer_tip_project/model/futbol_model.dart';

Widget next_match_page_body(List<SoccerMatch> allmatches) {
  return Column(
    children: [
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
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return nextMatchesTile(allmatches[index]);
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
