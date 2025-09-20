import 'package:dio/dio.dart';
import 'package:weather_today0/models/weather_model.dart';

class ApiData {
  final Dio dio = Dio();
  final String baseUrl = 'http://api.weatherapi.com';
  final String apiKey = '288c7c2056c2431fae954443251407';

  Future<WeatherModel> getApidata({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/v1/forecast.json?key=$apiKey&q=$cityName',
      );

      WeatherModel getData = WeatherModel.fromjson(response.data);

      return getData;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data['error']['message'] ?? 'No NetWork';
      throw Exception(errMessage);
    }
  }
}
