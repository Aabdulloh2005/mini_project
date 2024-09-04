import 'package:get_it/get_it.dart';
import 'package:mini_project/data/repositories/restuarant_repository.dart';
import 'package:mini_project/data/services/restaurant_service.dart';
import 'package:mini_project/logic/bloc/restaurant/restaurant_bloc.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton(RestaurantService());
  getIt.registerSingleton(
      RestuarantRepository(restaurantService: getIt.get<RestaurantService>()));
  getIt.registerSingleton(
      RestaurantBloc(restaurantRepository: getIt.get<RestuarantRepository>()));
}
