import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mapbox_search/mapbox_search.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapViewBloc extends Bloc<MapViewEvent, MapViewState> {
  MapViewBloc() : super(MapViewState.initial()) {
    on<RestaurantsSearched>(_onRestaurantsSearched);
    on<MuseumsSearched>(_onMuseumsSearched);
  }

  Future<void> _onRestaurantsSearched(
    RestaurantsSearched event,
    Emitter<MapViewState> emit,
  ) async {
    emit(state.copyWith(restaurants: event.restaurants));
  }

  Future<void> _onMuseumsSearched(
    MuseumsSearched event,
    Emitter<MapViewState> emit,
  ) async {
    emit(state.copyWith(museums: event.museums));
  }
}
