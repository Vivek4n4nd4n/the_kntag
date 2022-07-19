import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:the_kntag/map/g_map.dart';


class LatLong {
  final double latitude;
  final double longitude;
  LatLong(this.latitude, this.longitude);
}

class StreetMap extends StatefulWidget {
  const StreetMap({Key? key}) : super(key: key);

  @override
  State<StreetMap> createState() => _StreetMapState();
}

class _StreetMapState extends State<StreetMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.transparent,
     // appBar: AppBar(title: Text('Street maps')),
      body: Gmap(
          onPicked: (pickedData) {
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
          }),
    );
  }
}
