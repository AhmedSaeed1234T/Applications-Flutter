// import 'dart:nativewrappers/_internal/vm/lib/mirrors_patch.dart';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseURL = 'http://api.weatherapi.com/v1';
  final String apiKey = '84626cdb4d564a52bee140023241009';
  WeatherService(this.dio);
  Future<WeatherModel> getCurruntWeather({required String cityname}) async {
    try {
      Response response = await dio
          .get('$baseURL/forecast.json?key=$apiKey&q=$cityname&days=10');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there was an error, try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('oops there was an error , try later');
    }
  }
}
