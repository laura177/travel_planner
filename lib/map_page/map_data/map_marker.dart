import 'package:latlong2/latlong.dart';

class MapMarker {
  MapMarker(
      {required this.image,
      required this.title,
      required this.address,
      required this.location,
      required this.type});
  final String? image;
  final String? title;
  final String? address;
  final LatLng? location;
  final String? type;
}

final mapMarkers = [
  MapMarker(
    image: 'assets/edo-tokyo-cover.jpg',
    title: 'Edo Tokyo Museum',
    address: '1234 Tokyo Street',
    location: LatLng(35.6966, 139.7957),
    type: 'museum',
  ),
  MapMarker(
    image: 'assets/team_lab.jpg',
    title: 'TeamLab Borderless',
    address: '555 Ueno Street',
    location: LatLng(35.6263, 139.7829),
    type: 'museum',
  ),
  MapMarker(
    image: 'assets/mori.jpg',
    title: 'Mori Art Museum',
    address:
        'Japan, 〒106-6150 Tokyo, Minato City, Roppongi, 6 Chome−10−1, Roppongi Hills Mori Tower, 53階',
    location: LatLng(35.6605, 139.7292),
    type: 'museum',
  ),
  MapMarker(
    image: 'assets/sumida.jpg',
    title: 'The Sumida Hokusai Museum',
    address: '2 Chome-7-2 Kamezawa, Sumida City, Tokyo 130-0014, Japan',
    location: LatLng(35.6963, 139.8004),
    type: 'museum',
  ),
  MapMarker(
    image: 'assets/teienmuseum.jpg',
    title: 'Tokyo Metropolitan Teien Art Mureum',
    address: '5 Chome-21-9 Shirokanedai, Minato City, Tokyo 108-0071, Japan',
    location: LatLng(35.6369, 139.7190),
    type: 'museum',
  ),
  MapMarker(
    image: 'assets/nobu.jpg',
    title: 'NOBU Tokyo',
    address:
        'Japan, 〒105-0001 Tokyo, Minato City, Toranomon, 4 Chome−1−28, Toranomon Towers Office, １Ｆ',
    location: LatLng(35.6663, 139.7438),
    type: 'restaurant',
  ),
  MapMarker(
    image: 'assets/utai.jpg',
    title: 'Omotesando Ukai Tei',
    address:
        'Japan, 〒150-0001 Tokyo, Shibuya City, Jingumae, 5 Chome−10−1 表参道ジャイル 5F',
    location: LatLng(35.6674, 139.7068),
    type: 'restaurant',
  ),
  MapMarker(
    image: 'assets/saizeriya.jpg',
    title: 'Saizeriya Roppongi',
    address:
        'Japan, 〒106-0032 Tokyo, Minato City, Roppongi, 7 Chome−15−17 ユニ六本木ビル B1F',
    location: LatLng(35.6623, 139.7296),
    type: 'restaurant',
  ),
  MapMarker(
    image: 'assets/bbq.png',
    title: 'Midtown BBQ Tokyo',
    address:
        'Midtown BBQ Tokyo, アイガーデンテラス 202, 3 Chome-10-9 Iidabashi, Chiyoda City, Tokyo 102-0072, Japan',
    location: LatLng(35.7011, 139.7503),
    type: 'restaurant',
  ),
  MapMarker(
    image: 'assets/yakitori.jpg',
    title: 'Yakitori Alley',
    address: '2 Chome-3-3 Yurakucho, Chiyoda City, Tokyo 100-0006, Japan',
    location: LatLng(35.6732, 139.7614),
    type: 'restaurant',
  ),
];
