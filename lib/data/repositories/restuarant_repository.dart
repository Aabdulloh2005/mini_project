import 'package:mini_project/data/models/restaurant.dart';
import 'package:mini_project/data/services/restaurant_service.dart';

class RestuarantRepository {
  final RestaurantService _restaurantService;

  RestuarantRepository({required RestaurantService restaurantService})
      : _restaurantService = restaurantService;

  Future<List<Restaurant>> getRestaurants() async {
    return await _restaurantService.getRestaurants();
  }
}
