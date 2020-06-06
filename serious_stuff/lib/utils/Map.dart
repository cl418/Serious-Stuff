import 'dart:collection';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Map extends StatefulWidget {
  final LocationData location;

  Map({this.location});

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  LocationData _locationData;

  // Maps
  Set<Marker> _markers = HashSet<Marker>();
  Set<Polygon> _polygons = HashSet<Polygon>();
  Set<Circle> _circles = HashSet<Circle>();
  List<LatLng> polygonLatLngs = List<LatLng>();
  double radius;

  // id
  int _polygonIdCounter = 1;
  int _circleIdCounter = 1;
  int _markerIdCounter = 1;

  // Type controllers
  bool _isPolygon = true;
  bool _isMarker = false;
  bool _isCircle = false;

  @override
  void initState() {
    super.initState();
    _locationData = widget.location;
  }

  // set Markers on map
  void _setMarkers(LatLng point) {
    final String markerIdVal = 'marker_id_$_markerIdCounter';
    _markerIdCounter++;
    setState(() {
      print(
        'Marker | Latitude: ${point.latitude} Longitude: ${point.longitude}');
      _markers.add(
        Marker(
          markerId: MarkerId(markerIdVal),
          position: point,
        ),
      );
    });
  }

  // set Circles on map
  void _setCircles(LatLng point) {
    final String circleIdVal = 'circle_id_$_circleIdCounter';
    _circleIdCounter++;
    print('Circle | Latitude: ${point.latitude} Longitude:${point.longitude} Radius: $radius');
    _circles.add(
      Circle(
       circleId: CircleId(circleIdVal),
       center: point,
       radius: radius,
       fillColor: Colors.redAccent.withOpacity(0.5),
       strokeWidth: 3,
       strokeColor: Colors.redAccent
      )
    );
  }

  // set Polygon to map
  void _setPolygon() {
    final String polygonIdVal = 'polygon_id_$_polygonIdCounter';
    _polygons.add(
        Polygon(
          polygonId: PolygonId(polygonIdVal),
          points: polygonLatLngs,
          strokeWidth: 2,
          strokeColor: Colors.yellow,
          fillColor: Colors.yellow.withOpacity(0.15),
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}