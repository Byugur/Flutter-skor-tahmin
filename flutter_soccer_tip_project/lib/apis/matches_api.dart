// @dart=2.9

import 'dart:convert';
import 'package:flutter_soccer_tip_project/model/futbol_model.dart';
import 'package:http/http.dart';

class FutbolSonucApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "b3cb59a835fea07e9ea3142ac909a7d9"
  };

  Future<List<SoccerMatch>> getMatches() async {
    Response res = await get(apiUrl, headers: headers);
    var body;
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api Service: ${body}");
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();

      return matches;
    }
  }
}
