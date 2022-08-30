part of 'map_bloc.dart';

class MapViewState extends Equatable {
  const MapViewState({required this.restaurants, required this.museums});

  factory MapViewState.initial() => const MapViewState(
        restaurants: [],
        museums: [],
      );

  final List<MapBoxPlace>? restaurants;
  final List<MapBoxPlace?> museums;

  @override
  List<Object?> get props => [restaurants, museums];

  MapViewState copyWith({
    List<MapBoxPlace>? restaurants,
    List<MapBoxPlace>? museums,
  }) {
    return MapViewState(
      restaurants: restaurants ?? this.restaurants,
      museums: museums ?? this.museums,
    );
  }
}
