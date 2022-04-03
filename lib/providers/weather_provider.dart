import 'package:flutter/material.dart';
import 'package:weather_2/models/models_index.dart';
import 'package:weather_2/repositories/weather_repository.dart';

class WeatherProvider extends ChangeNotifier {
  late Weather weather;

  getWeather() async {
    weather = await WeatherRepositroy.getWeather('Baku');
    return true;
    notifyListeners();
  }
}
