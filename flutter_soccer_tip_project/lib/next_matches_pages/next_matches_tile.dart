// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_soccer_tip_project/model/futbol_model.dart';

Widget nextMatchesTile(SoccerMatch match) {
  int startIndex = 11;
  int endIndex = 13;
  int startDateIndex = 5;
  int endDateIndex = 10;
  int startMinuteIndex = 13;
  int endMinuteIndex = 16;
  int time = int.parse(match.fixture.date.substring(startIndex, endIndex));
  time = time + 3;
  if (time == 24) {
    time = 0;
  }
  if (time == 25) {
    time = 1;
  }
  if (time == 26) {
    time = 2;
  }
  if (time == 27) {
    time = 3;
  }
  return Container(
    margin: EdgeInsets.symmetric(vertical: 12.0),
    padding: EdgeInsets.symmetric(vertical: 12.0),
    decoration: new BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      match.home.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Image.network(
                    match.home.logoUrl,
                    width: 36.0,
                  ),
                  Expanded(
                    child: Text(
                      " " +
                          "${match.fixture.date.substring(startDateIndex, endDateIndex)}" +
                          "  " +
                          "${time}" +
                          "${match.fixture.date.substring(startMinuteIndex, endMinuteIndex)}" +
                          " ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Image.network(
                    match.away.logoUrl,
                    width: 36.0,
                  ),
                  Expanded(
                    child: Text(
                      match.away.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      "Tahminler",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                        "Maçta Çıkabilecek Gol Sayısı : 3 \nMaçı Kazanması Beklenen Takım : Deplasman \nMaçta Beklenen Skor : 1-2"),
                  ),
                ],
              ),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                match.home.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
            Image.network(
              match.home.logoUrl,
              width: 36.0,
            ),
            Expanded(
              child: Text(
                "${match.fixture.date.substring(startDateIndex, endDateIndex)}" +
                    "  " +
                    "${time}" +
                    "${match.fixture.date.substring(startMinuteIndex, endMinuteIndex)}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
            Image.network(
              match.away.logoUrl,
              width: 36.0,
            ),
            Expanded(
              child: Text(
                match.away.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      );
    }),
  );
}
