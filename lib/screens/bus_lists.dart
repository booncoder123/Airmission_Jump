import 'package:air_mission/screens/HomePage.dart';
import 'package:air_mission/screens/const.dart';
import 'package:air_mission/screens/row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class BusLists extends StatefulWidget {
  @override
  _BusListsState createState() => _BusListsState();


}


class _BusListsState extends State<BusLists> {
  var itemnew;
  var items = [
    PlaceInfo("NORMAL", "192", Colors.blue),
    PlaceInfo("NORMAL", "101", Colors.red),
    PlaceInfo("EXTRA", "20", Colors.amber),
    PlaceInfo("EXTRA", "21", Colors.blueGrey),
    PlaceInfo("SPEED", "101", Colors.blue),
    PlaceInfo("SPEED", "10", Colors.red),
    PlaceInfo("NORMAL", "34", Colors.amber),
    PlaceInfo("NORMAL", "192", Colors.blueGrey),
    PlaceInfo("NORMAL", "101", Colors.blue),
  ];
  @override
  void initState() {
    super.initState();
    getData();

  }


  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  void getData() async{
    var url = Uri.https('kmitl-challenge.herokuapp.com', '/feed/stations', {'q': '{http}'});

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body);
      var itemCount = jsonResponse['data'][0]['bus_pass'];
      itemnew = itemCount;
      print(itemCount);



    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Container(
          child: Scaffold(
              body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bgbus.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 500,
                  height: 600,
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Center(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(children: <Widget>[
                                InkWell(
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: items[index].color,
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,

                                        children: <Widget>[
                                          Container(
                                            width: 70,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white),
                                            child: Icon(
                                              Icons.directions_bus,
                                              size: 60,
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(
                                            items[index].line,
                                            style: TextStyle(fontSize: 20),
                                          ),

                                          Text(
                                            items[index].tag,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 60),
                                          ),
                                          SizedBox(width: 10,)

                                        ]),
                                  ),
                                  onTap: (){
                                    //rint(items[index].tag);
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(color: items[index].color, num: items[index].tag)));
                                  },
                                ),


                              ])));
                    },
                  ),
                ),
              ),
              Positioned(
              top: 710,
              left: 80,
          child: InkWell(
            child: Container(
              width: 60,
              height: 60,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color:  _colorFromHex('#FFFFFF')),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration:
                  BoxDecoration(shape: BoxShape.circle, color: _colorFromHex('#193566')),
                  child: Icon(
                    Icons.directions_bus,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onTap: () {
              print("Tapped");
            },
          ),
        ),
              Positioned(
                top: 710,
                left: 290,
                child: InkWell(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration:
                    BoxDecoration(shape: BoxShape.circle, color:  _colorFromHex('#FFFFFF')),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration:
                        BoxDecoration(shape: BoxShape.circle, color: _colorFromHex('#193566')),
                        child: Icon(
                          Icons.dehaze,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: 740,
                left: 160,
                child: Text(
                  "ROUTE INFO",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Positioned(
                top: 630,
                left: 180,
                child: InkWell(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration:
                    BoxDecoration(shape: BoxShape.circle, color:  _colorFromHex('#FFFFFF')),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration:
                        BoxDecoration(shape: BoxShape.circle, color: _colorFromHex('#193566')),
                        child: Icon(
                          Icons.home_rounded,
                          color : Colors.white
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/third');
                  },
                ),
              ),


            ],
          )),
        ),
      ),
    );
  }
}





