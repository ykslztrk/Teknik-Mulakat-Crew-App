import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // Suitable for most situations
// ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';

class Marine extends StatefulWidget {
  const Marine({Key? key}) : super(key: key);

  @override
  State<Marine> createState() => _MarineState();
}

class _MarineState extends State<Marine> {
  // var koordinates = LatLng(-8.83833,13.2344);
  var markers = <Marker>[
    Marker(
        point: LatLng(-8.83833, 13.2344),
        builder: (context) => const FlutterLogo()),
  ];
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(-8.83833, 13.2344),
        zoom: 5.2,
      ),
      layers: [MarkerLayerOptions(markers: markers)],
    );
  }
}
