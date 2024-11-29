import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weatherapp/utiles/helper/halper.dart';

import '../Modal/weather_modal.dart';

class WeatherController extends ChangeNotifier {
  String city = "Surat";

  void getsearchData(String city) {
    this.city = city;
    notifyListeners();
  }

  Future<Weather?> fetchWeatherData() async {
    log("City = $city");
    return await Apihalper.apihalper.getWeatherData(city: city);
  }
}
