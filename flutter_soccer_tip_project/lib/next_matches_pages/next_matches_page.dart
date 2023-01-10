// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_soccer_tip_project/next_matches_pages/next_matches_pager.dart';
import 'package:flutter_soccer_tip_project/next_matches_pages/next_matches_api_manager.dart';

class Next_Matches_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FutbolSonucApi().getNextMatches(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return next_match_page_body(snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
