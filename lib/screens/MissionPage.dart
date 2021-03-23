import 'package:air_mission/styles/Mission_Text_style.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mission"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "All",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Ranked",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "Favourites",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    each_mission(),
                    each_mission(),
                    each_mission(),
                    each_mission(),
                    each_mission(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class each_mission extends StatelessWidget {
  const each_mission({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.blue),
          ),
          Text(
            "Mission1",
            textAlign: TextAlign.left,
          ),
          Text(
            "Lorem ipsum dolor sit amet,conummy nibh euismt",
          ),
          Text(
            "Lorem ipsum dolor sit amet,conummy nibh euismt",
          ),
          Text(
            "Lorem ipsum dolor sit amet,conummy nibh euismt",
          ),
          Text(
            "Lorem ipsum dolor sit amet,conummy nibh euismt",
          )
        ],
      ),
    );
  }
}
