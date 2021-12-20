import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../app.dart';

class MapApi extends StatefulWidget {
  const MapApi({Key? key}) : super(key: key);

  @override
  _MapApiState createState() => _MapApiState();
}

class _MapApiState extends State<MapApi> {
  static const _intialCameraPosition = CameraPosition(
    target: LatLng(37.7739722, -122.431297),
    zoom: 11.5,
  );
  @override
  Widget build(BuildContext context) {
    return const GoogleMap(
      initialCameraPosition: _intialCameraPosition,
    );
  }
}
