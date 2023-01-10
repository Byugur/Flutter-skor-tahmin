// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_soccer_tip_project/live_score_pages/pagerbody.dart';
import 'package:flutter_soccer_tip_project/apis/api_manager.dart';

class Live_Score_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FutbolSonucApi().getAllMatches(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return PageBody(snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
