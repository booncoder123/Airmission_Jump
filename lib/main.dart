// @dart=2.9
import 'dart:async';

import 'package:air_mission/screens/MapPage.dart';
import 'package:air_mission/services/AppBarStretch.dart';
import 'package:air_mission/services/AppBarStretch.dart';
import 'package:air_mission/services/AppBarStretch.dart';


import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'MapStyle/numbers.dart';

import 'components/SlideMenuBar.dart';
import 'services/AppBarStretch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: ChangeNotifierProvider<AppBarStretch>(
              create: (context) => AppBarStretch() ,
              child: SlideMenu(),
            ),
          ),
        ),
      ),
    );
  }
}

class SlideMenu extends StatefulWidget {
  @override
  _SlideMenuState createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  final PanelController _pc = new PanelController();


  @override
  Widget build(BuildContext context) {
    final a = Provider.of<AppBarStretch>(context);

    return SlidingUpPanel(
      controller: _pc,
      color: Color(0xFFA5D3B1),
      maxHeight: 150,
      minHeight: 450,
      borderRadius: radiusMenuSwap,
      panel: SlideMenubar(
        height: a.height,
        width: a.width,
      ),
      body: Center(
        child: MapSample(),
      ),
      onPanelClosed: ( ) {
       a.ToggleStretch();
      },
      onPanelOpened: (){
        a.ToggleStretch2();
      },
    );
  }
}
