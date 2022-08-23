import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MapView extends StatelessWidget {
  const MapView({super.key});
  final String mapApiKey = '4AAS3GP89MIuPZMwE1ALwY7GpRlKvxH2';

  static Route<void> route() =>
      MaterialPageRoute<void>(builder: (_) => const MapView());

  @override
  Widget build(BuildContext context) {
    final tomtomHQ = LatLng(52.376372, 4.908066);
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: tomtomHQ, zoom: 13),
              layers: [
                TileLayerOptions(
                  urlTemplate:
                      'https://api.tomtom.com/map/1/tile/basic/main/{z}/{x}/{y}.png?key={apiKey}',
                  additionalOptions: {'apiKey': mapApiKey},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
