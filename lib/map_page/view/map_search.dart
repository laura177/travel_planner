import 'package:mapbox_search/mapbox_search.dart';
import '../../auth/secrets.dart';

final mapBoxKey = secretMapBoxAccessToken;

Future<void> main() async {
  String apiKey = mapBoxKey;

  //await geoCoding(apiKey).catchError(print);
  await placesSearch(apiKey).catchError(print);
}

Future placesSearch(String apiKey) async {
  final placesService = PlacesSearch(
    apiKey: apiKey,
    country: 'JP',
    limit: 5,
  );
  final places = await placesService.getPlaces(
    'restaurant',
    location: Location(lat: 35.6762, lng: 139.6503),
  );
  return places;
}
