import '../../core/network/dio_client.dart';

class FoodService {
  final _dio = DioClient().dio;

  Future<void> getFoods() async {
    final response = await _dio.get("foods.json");

    print(response.data);
  }
}
