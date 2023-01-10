// @dart=2.9

import 'dart:convert';
import 'package:flutter_soccer_tip_project/model/futbol_model.dart';
import 'package:http/http.dart';

class FutbolTahminApi {
  final String apiUrl =
      "https://v3.football.api-sports.io/predictions?fixture=198772";
  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "b3cb59a835fea07e9ea3142ac909a7d9"
  };

  Future<List<SoccerMatchPredictions>> getPredictions() async {
    Response res = await get(apiUrl, headers: headers);
    var body;
    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api Service: ${body}");
      List<SoccerMatchPredictions> matches = matchesList
          .map((dynamic item) => SoccerMatchPredictions.fromJson(item))
          .toList();

      return matches;
    }
  }
}
