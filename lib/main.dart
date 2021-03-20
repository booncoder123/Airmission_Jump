// @dart=2.9
import 'dart:async';

import 'package:air_mission/screens/MapPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'MapStyle/numbers.dart';
import 'components/Minimenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: SlidingUpPanel(
              color: Color(0xFFA5D3B1),
              maxHeight: 150,
              minHeight: 450,
              borderRadius: radiusMenuSwap,
              panel: Stack(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Minimenu(icon: CupertinoIcons.airplane,title: "Mission"),
                          Minimenu(icon: CupertinoIcons.airplane,title: "Mission"),
                          Minimenu(icon: CupertinoIcons.airplane,title: "Mission"),




                        ],
                      ),
                    ),
                  ),

                ],

              ),
              body: Center(
                child: MapSample(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
