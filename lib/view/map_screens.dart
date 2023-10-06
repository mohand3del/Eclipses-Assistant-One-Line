import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:url_launcher/url_launcher.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final mapController = MapController();

  @override
  Widget build(BuildContext context) {
    // Define the latitude and longitude of the marker's position.
    final double markerLat = 51.509364;
    final double markerLng = -0.128928;

    final double markerLat1 = 53.509364;
    final double markerLng1 = -0.14444;
    LatLng selectedLatLng = LatLng(51.509364, -0.128928);
    var markers2 = [
      Marker(
        point: LatLng(markerLat, markerLng), // Specify marker's position
        width: 80,
        height: 80,
        builder: (context) => Icon(
          Icons.location_on,
          color: Colors.red,
          size: 40,
        ),
      ),
      Marker(
        point: LatLng(markerLat1, markerLng1), // Specify marker's position
        width: 80,
        height: 80,
        builder: (context) => Icon(
          Icons.location_on,
          color: Colors.red,
          size: 40,
        ),
      ),
    ];
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        onMapReady: () {
          mapController.mapEventStream.listen((evt) {});
        },
        center: selectedLatLng, // Center the map at the marker's position
        zoom: 9.2,
      ),
      nonRotatedChildren: [
        RichAttributionWidget(
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () =>
                  launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
            ),
          ],
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: markers2,

        ),
      ],
    );
  }
}
