import 'package:dio/dio.dart';

class DioClient {
  final _dio = Dio(
    BaseOptions(baseUrl: "https://uzum-shop-default-rtdb.firebaseio.com/"),
  );

  Dio get dio => _dio;
}
