import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:weatherapp/Modal/weather_modal.dart';
import 'dart:core';

class Apihalper {
  Apihalper._();

  static Apihalper apihalper = Apihalper._();

  Future<Weather?> getWeatherData({required String city}) async {
    log("API Method is called...");
    Uri url = Uri.parse(
      "https://api.weatherapi.com/v1/forecast.json?key=6e46df35e2804af1a9775258230904&q=$city",
    );

    http.Response res = await http.get(url);

    if (res.statusCode == 200) {
      Map<String, dynamic> allWeatherData = jsonDecode(res.body);
      Weather weather = Weather.formMap(data: allWeatherData);
      return weather;
    }
    return null;
  }
}
