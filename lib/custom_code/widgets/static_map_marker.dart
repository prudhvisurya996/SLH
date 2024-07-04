// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong2/latlong.dart' as LatLng;

class StaticMapMarker extends StatefulWidget {
  const StaticMapMarker({
    Key? key,
    this.width,
    this.height,
    this.latitude,
    this.longitude,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? latitude;
  final double? longitude;

  @override
  _StaticMapMarkerState createState() => _StaticMapMarkerState();
}

class _StaticMapMarkerState extends State<StaticMapMarker> {
  get latitude => widget.latitude;
  get longitude => widget.longitude;

  @override
  Widget build(BuildContext context) {
    final List<Marker> markers = [LatLng.LatLng(latitude, longitude)]
        .map((markerPosition) => Marker(
              point: markerPosition,
              width: 40,
              height: 40,
              builder: (_) => const Icon(Icons.location_on, size: 40),
              anchorPos: AnchorPos.align(AnchorAlign.top),
              rotateAlignment: AnchorAlign.top.rotationAlignment,
            ))
        .toList();

    return FlutterMap(
      options: MapOptions(
        center: LatLng.LatLng(latitude, longitude),
        zoom: 13,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        PopupMarkerLayer(
          options: PopupMarkerLayerOptions(
            markers: markers,
            popupDisplayOptions: PopupDisplayOptions(
              builder: (BuildContext context, Marker marker) => Card(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 0),
                      child: Icon(Icons.location_on),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        constraints:
                            const BoxConstraints(minWidth: 100, maxWidth: 200),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                              'Your Location',
                              overflow: TextOverflow.fade,
                              softWrap: false,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0)),
                            Text(
                              'Position: ${marker.point.latitude}, ${marker.point.longitude}',
                              style: const TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
