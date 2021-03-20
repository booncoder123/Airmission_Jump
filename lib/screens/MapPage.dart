import 'package:air_mission/MapStyle/MapTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late GoogleMapController _controller;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              _controller.setMapStyle(mapStyle);
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.cloud_circle_sharp,
                size: 80,
                color: Colors.white,

              )
              ,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 50,
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Color(0xffA4C9ED),
                      child: Icon(
                        Icons.accessibility,
                        size: 24,
                      ),
                      shape: CircleBorder(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 262,
                      height: 57,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.0))),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Icon(
                              Icons.zoom_in_outlined,
                              size: 35,
                              color: Color(0xffA4C9ED),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.5),
                            child: Text(
                              "Search Maps",
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      height: 50,
                      minWidth: 50,
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Color(0xffA4C9ED),
                      child: Icon(
                        Icons.dehaze,
                        size: 24,
                      ),
                      shape: CircleBorder(),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
