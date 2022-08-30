part of 'map_bloc.dart';

abstract class MapViewEvent extends Equatable {
  const MapViewEvent();
}

class RestaurantsSearched extends MapViewEvent {
  const RestaurantsSearched({required this.restaurants});

  final List<MapBoxPlace> restaurants;

  @override
  List<Object> get props => [restaurants];
}

class MuseumsSearched extends MapViewEvent {
  const MuseumsSearched({required this.museums});

  final List<MapBoxPlace>? museums;

  @override
  List<Object?> get props => [museums];
}
