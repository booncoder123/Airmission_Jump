import 'package:air_mission/screens/MissionPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Minimenu.dart';

class SlideMenubar extends StatelessWidget {
  double height;
  double width;

  SlideMenubar({required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: <Widget>[
          RowAppMenuBar(height: height, width: width),







        ],),
      ),
    );
  }
}

class RowAppMenuBar extends StatefulWidget {
  const RowAppMenuBar({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  _RowAppMenuBarState createState() => _RowAppMenuBarState();
}

class _RowAppMenuBarState extends State<RowAppMenuBar> {
  Go_To_MissionPage(){
   Navigator.push(context, MaterialPageRoute(builder: (context) => MissionPage()));
   //  print("Click!");


  }

  foo(){
    print("foo!");

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Minimenu(icon: CupertinoIcons.airplane,title: "Mission", heightBox: widget.height,widthBox: widget.width,boxColor: 0xffF08080,onClick:Go_To_MissionPage ,),
            Minimenu(icon: CupertinoIcons.airplane,title: "Mission",heightBox: widget.height,widthBox: widget.width,boxColor: 0xffADEDEA,onClick: foo,),
            Minimenu(icon: CupertinoIcons.airplane,title: "Mission",heightBox: widget.height,widthBox: widget.width,boxColor: 0xffADEDEA,onClick: foo,),

          ],
        ),
        SizedBox(height: 20,),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: <Widget>[
        //     Minimenu(icon: CupertinoIcons.airplane,title: "Mission", heightBox: widget.height,widthBox: widget.width,boxColor: 0xffADEDEA,onClick: Go_To_MissionPage,),
        //     Minimenu(icon: CupertinoIcons.airplane,title: "Mission",heightBox: widget.height,widthBox: widget.width,boxColor: 0xffADEDEA,onClick: Go_To_MissionPage,),
        //     Minimenu(icon: CupertinoIcons.airplane,title: "Mission",heightBox: widget.height,widthBox: widget.width,boxColor: 0xffADEDEA,onClick: Go_To_MissionPage,),
        //
        //   ],
        // ),
      ],

    );
  }
}
