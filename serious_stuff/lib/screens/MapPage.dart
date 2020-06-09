import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

Completer<GoogleMapController> _controller = Completer();

const LatLng _center = const LatLng(49.2780947, -122.9373926);

void _onMapCreated(GoogleMapController controller) {
  _controller.complete(controller);
}

GoogleMap googleMap() {
  return GoogleMap(
    onMapCreated: _onMapCreated,
    initialCameraPosition: CameraPosition(
      target: _center,
      zoom: 11.0,
    ),
  );
}