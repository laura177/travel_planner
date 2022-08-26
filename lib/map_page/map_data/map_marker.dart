import 'package:latlong2/latlong.dart';

class MapMarker {
  MapMarker({
    required this.image,
    required this.title,
    required this.address,
    required this.location,
    required this.rating,
  });
  final String? image;
  final String? title;
  final String? address;
  final LatLng? location;
  final int? rating;
}

final mapMarkers = [
  MapMarker(
    image: 'assets/edo-tokyo-cover.jpg',
    title: 'Edo Tokyo Museum',
    address: '1234 Tokyo Street',
    location: LatLng(35.6966, 139.7957),
    rating: 2,
  ),
  MapMarker(
    image: 'assets/team_lab.jpg',
    title: 'TeamLab Borderless',
    address: '555 Ueno Street',
    location: LatLng(35.6263, 139.7829),
    rating: 1,
  )
];
