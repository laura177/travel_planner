import 'package:mapbox_search/mapbox_search.dart';
import 'package:onboarding_travel_planner/auth/secrets.dart';

const mapBoxKey = secretMapBoxAccessToken;

Future<void> main() async {
  const apiKey = mapBoxKey;

  //await geoCoding(apiKey).catchError(print);
  await placesSearch(apiKey).catchError(print);
}

Future placesSearch(String apiKey) async {
  final placesService = PlacesSearch(
    apiKey: apiKey,
    country: 'JP',
    limit: 5,
    types: PlaceType.poi,
    language: 'English',
  );

  final places = await placesService.getPlaces(
    'museum',
    location: Location(lat: 35.6762, lng: 139.6503),
  );

  //final placesInfo = ReverseGeoCoding(apiKey: apiKey, location: );

  print(places);
}

// Future geoCoding(String apiKey) async {
//   final geoCodingService = ReverseGeoCoding(apiKey: apiKey, types: PlaceType.poi, location: PlaceType., );
// }
