import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:mini_project/data/models/restaurant.dart';
import 'package:mini_project/data/repositories/restuarant_repository.dart';
import 'package:mini_project/data/services/restaurant_service.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  final RestuarantRepository _restaurantRepository;
  RestaurantBloc({required RestuarantRepository restaurantRepository})
      : _restaurantRepository = restaurantRepository,
        super(ResInitialState()) {
    on<GetResEvent>(_onGetRestaurants);
  }

  _onGetRestaurants(GetResEvent event, Emitter<RestaurantState> emit) async {
    emit(ResLoadingState());
    try {
      final restaurants = await _restaurantRepository.getRestaurants();

      emit(ResLoadedState(restaurants: restaurants));
    } on DioException catch (e) {
      emit(ResErrorState(errorText: e.toString()));
    } catch (e) {
      emit(ResErrorState(errorText: e.toString()));
    }
  }
}
