// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_2/models/weather.dart';

class WeatherRepositroy {
  static Future<Weather> getWeather(String city) async {
    // https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
    final queryParameters = {
      'q': city,
      'appid': 'ef644f9b6a057dc1863e125e24a0abc7',
    };

    final uri = Uri.https(
        'api.openweathermap.org', 'data/2.5/weather', queryParameters);

    final response = await http.get(uri);

    print(response.body);

    final json = jsonDecode(response.body);
    return Weather.fromJson(json);
  }
}
