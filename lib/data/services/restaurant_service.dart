import 'package:dio/dio.dart';
import 'package:mini_project/core/network/dio_client.dart';
import 'package:mini_project/data/models/restaurant.dart';

class RestaurantService {
  final _dio = DioClient().dio;

  Future<List<Restaurant>> getRestaurants() async {
    try {
      final response = await _dio.get("restaurants.json");
      Map<String, dynamic> data = response.data;
      print(response.data);
      List<Restaurant> restaurants = [];
      data.forEach(
        (key, value) {
          restaurants.add(Restaurant.fromMap(value));
        },
      );
      print(restaurants);
      return restaurants;
    } on DioException catch (e) {
      print(e.toString());
      rethrow;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
