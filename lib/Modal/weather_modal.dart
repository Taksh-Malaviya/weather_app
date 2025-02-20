// // To parse this JSON data, do
// //
// //     final weather = weatherFromJson(jsonString);
//
// import 'dart:convert';
//
// Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));
//
// String weatherToJson(Weather data) => json.encode(data.toJson());
//
// class Weather {
//   Location location;
//   Current current;
//   Forecast forecast;
//
//   Weather({
//     required this.location,
//     required this.current,
//     required this.forecast,
//   });
//
//   factory Weather.fromJson(Map<String, dynamic> json) => Weather(
//         location: Location.fromJson(json["location"]),
//         current: Current.fromJson(json["current"]),
//         forecast: Forecast.fromJson(json["forecast"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "location": location.toJson(),
//         "current": current.toJson(),
//         "forecast": forecast.toJson(),
//       };
// }
//
// class Current {
//   int? lastUpdatedEpoch;
//   String? lastUpdated;
//   double tempC;
//   double tempF;
//   int isDay;
//   Condition condition;
//   double windMph;
//   double windKph;
//   int windDegree;
//   WindDir windDir;
//   double pressureMb;
//   double pressureIn;
//   double precipMm;
//   double precipIn;
//   int humidity;
//   int cloud;
//   double feelslikeC;
//   double feelslikeF;
//   double windchillC;
//   double windchillF;
//   double heatindexC;
//   double heatindexF;
//   double dewpointC;
//   double dewpointF;
//   double visKm;
//   double visMiles;
//   double uv;
//   double gustMph;
//   double gustKph;
//   int? timeEpoch;
//   String? time;
//   double? snowCm;
//   int? willItRain;
//   int? chanceOfRain;
//   int? willItSnow;
//   int? chanceOfSnow;
//
//   Current({
//     this.lastUpdatedEpoch,
//     this.lastUpdated,
//     required this.tempC,
//     required this.tempF,
//     required this.isDay,
//     required this.condition,
//     required this.windMph,
//     required this.windKph,
//     required this.windDegree,
//     required this.windDir,
//     required this.pressureMb,
//     required this.pressureIn,
//     required this.precipMm,
//     required this.precipIn,
//     required this.humidity,
//     required this.cloud,
//     required this.feelslikeC,
//     required this.feelslikeF,
//     required this.windchillC,
//     required this.windchillF,
//     required this.heatindexC,
//     required this.heatindexF,
//     required this.dewpointC,
//     required this.dewpointF,
//     required this.visKm,
//     required this.visMiles,
//     required this.uv,
//     required this.gustMph,
//     required this.gustKph,
//     this.timeEpoch,
//     this.time,
//     this.snowCm,
//     this.willItRain,
//     this.chanceOfRain,
//     this.willItSnow,
//     this.chanceOfSnow,
//   });
//
//   factory Current.fromJson(Map<String, dynamic> json) => Current(
//         lastUpdatedEpoch: json["last_updated_epoch"],
//         lastUpdated: json["last_updated"],
//         tempC: json["temp_c"]?.toDouble(),
//         tempF: json["temp_f"]?.toDouble(),
//         isDay: json["is_day"],
//         condition: Condition.fromJson(json["condition"]),
//         windMph: json["wind_mph"]?.toDouble(),
//         windKph: json["wind_kph"]?.toDouble(),
//         windDegree: json["wind_degree"],
//         windDir: windDirValues.map[json["wind_dir"]]!,
//         pressureMb: json["pressure_mb"],
//         pressureIn: json["pressure_in"]?.toDouble(),
//         precipMm: json["precip_mm"],
//         precipIn: json["precip_in"],
//         humidity: json["humidity"],
//         cloud: json["cloud"],
//         feelslikeC: json["feelslike_c"]?.toDouble(),
//         feelslikeF: json["feelslike_f"]?.toDouble(),
//         windchillC: json["windchill_c"]?.toDouble(),
//         windchillF: json["windchill_f"]?.toDouble(),
//         heatindexC: json["heatindex_c"]?.toDouble(),
//         heatindexF: json["heatindex_f"]?.toDouble(),
//         dewpointC: json["dewpoint_c"]?.toDouble(),
//         dewpointF: json["dewpoint_f"]?.toDouble(),
//         visKm: json["vis_km"],
//         visMiles: json["vis_miles"],
//         uv: json["uv"]?.toDouble(),
//         gustMph: json["gust_mph"]?.toDouble(),
//         gustKph: json["gust_kph"]?.toDouble(),
//         timeEpoch: json["time_epoch"],
//         time: json["time"],
//         snowCm: json["snow_cm"],
//         willItRain: json["will_it_rain"],
//         chanceOfRain: json["chance_of_rain"],
//         willItSnow: json["will_it_snow"],
//         chanceOfSnow: json["chance_of_snow"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "last_updated_epoch": lastUpdatedEpoch,
//         "last_updated": lastUpdated,
//         "temp_c": tempC,
//         "temp_f": tempF,
//         "is_day": isDay,
//         "condition": condition.toJson(),
//         "wind_mph": windMph,
//         "wind_kph": windKph,
//         "wind_degree": windDegree,
//         "wind_dir": windDirValues.reverse[windDir],
//         "pressure_mb": pressureMb,
//         "pressure_in": pressureIn,
//         "precip_mm": precipMm,
//         "precip_in": precipIn,
//         "humidity": humidity,
//         "cloud": cloud,
//         "feelslike_c": feelslikeC,
//         "feelslike_f": feelslikeF,
//         "windchill_c": windchillC,
//         "windchill_f": windchillF,
//         "heatindex_c": heatindexC,
//         "heatindex_f": heatindexF,
//         "dewpoint_c": dewpointC,
//         "dewpoint_f": dewpointF,
//         "vis_km": visKm,
//         "vis_miles": visMiles,
//         "uv": uv,
//         "gust_mph": gustMph,
//         "gust_kph": gustKph,
//         "time_epoch": timeEpoch,
//         "time": time,
//         "snow_cm": snowCm,
//         "will_it_rain": willItRain,
//         "chance_of_rain": chanceOfRain,
//         "will_it_snow": willItSnow,
//         "chance_of_snow": chanceOfSnow,
//       };
// }
//
// class Condition {
//   WeatherText text;
//   WeatherIcon icon;
//   int code;
//
//   Condition({
//     required this.text,
//     required this.icon,
//     required this.code,
//   });
//
//   factory Condition.fromJson(Map<String, dynamic> json) => Condition(
//         text: textValues.map[json["text"]]!,
//         icon: iconValues.map[json["icon"]]!,
//         code: json["code"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "text": textValues.reverse[text],
//         "icon": iconValues.reverse[icon],
//         "code": code,
//       };
// }
//
// enum WeatherIcon {
//   CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_113_PNG,
//   CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_113_PNG
// }
//
// final iconValues = EnumValues({
//   "//cdn.weatherapi.com/weather/64x64/day/113.png":
//       WeatherIcon.CDN_WEATHERAPI_COM_WEATHER_64_X64_DAY_113_PNG,
//   "//cdn.weatherapi.com/weather/64x64/night/113.png":
//       WeatherIcon.CDN_WEATHERAPI_COM_WEATHER_64_X64_NIGHT_113_PNG
// });
//
// enum WeatherText { CLEAR, SUNNY }
//
// final textValues =
//     EnumValues({"Clear ": WeatherText.CLEAR, "Sunny": WeatherText.SUNNY});
//
// enum WindDir { ENE, NE, NNE }
//
// final windDirValues =
//     EnumValues({"ENE": WindDir.ENE, "NE": WindDir.NE, "NNE": WindDir.NNE});
//
// class Forecast {
//   List<Forecastday> forecastday;
//
//   Forecast({
//     required this.forecastday,
//   });
//
//   factory Forecast.fromJson(Map<String, dynamic> json) => Forecast(
//         forecastday: List<Forecastday>.from(
//             json["forecastday"].map((x) => Forecastday.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "forecastday": List<dynamic>.from(forecastday.map((x) => x.toJson())),
//       };
// }
//
// class Forecastday {
//   DateTime date;
//   int dateEpoch;
//   Day day;
//   Astro astro;
//   List<Current> hour;
//
//   Forecastday({
//     required this.date,
//     required this.dateEpoch,
//     required this.day,
//     required this.astro,
//     required this.hour,
//   });
//
//   factory Forecastday.fromJson(Map<String, dynamic> json) => Forecastday(
//         date: DateTime.parse(json["date"]),
//         dateEpoch: json["date_epoch"],
//         day: Day.fromJson(json["day"]),
//         astro: Astro.fromJson(json["astro"]),
//         hour: List<Current>.from(json["hour"].map((x) => Current.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "date":
//             "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
//         "date_epoch": dateEpoch,
//         "day": day.toJson(),
//         "astro": astro.toJson(),
//         "hour": List<dynamic>.from(hour.map((x) => x.toJson())),
//       };
// }
//
// class Astro {
//   String sunrise;
//   String sunset;
//   String moonrise;
//   String moonset;
//   String moonPhase;
//   int moonIllumination;
//   int isMoonUp;
//   int isSunUp;
//
//   Astro({
//     required this.sunrise,
//     required this.sunset,
//     required this.moonrise,
//     required this.moonset,
//     required this.moonPhase,
//     required this.moonIllumination,
//     required this.isMoonUp,
//     required this.isSunUp,
//   });
//
//   factory Astro.fromJson(Map<String, dynamic> json) => Astro(
//         sunrise: json["sunrise"],
//         sunset: json["sunset"],
//         moonrise: json["moonrise"],
//         moonset: json["moonset"],
//         moonPhase: json["moon_phase"],
//         moonIllumination: json["moon_illumination"],
//         isMoonUp: json["is_moon_up"],
//         isSunUp: json["is_sun_up"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "sunrise": sunrise,
//         "sunset": sunset,
//         "moonrise": moonrise,
//         "moonset": moonset,
//         "moon_phase": moonPhase,
//         "moon_illumination": moonIllumination,
//         "is_moon_up": isMoonUp,
//         "is_sun_up": isSunUp,
//       };
// }
//
// class Day {
//   double maxtempC;
//   double maxtempF;
//   double mintempC;
//   double mintempF;
//   double avgtempC;
//   double avgtempF;
//   double maxwindMph;
//   double maxwindKph;
//   double totalprecipMm;
//   double totalprecipIn;
//   double totalsnowCm;
//   double avgvisKm;
//   double avgvisMiles;
//   int avghumidity;
//   int dailyWillItRain;
//   int dailyChanceOfRain;
//   int dailyWillItSnow;
//   int dailyChanceOfSnow;
//   Condition condition;
//   double uv;
//
//   Day({
//     required this.maxtempC,
//     required this.maxtempF,
//     required this.mintempC,
//     required this.mintempF,
//     required this.avgtempC,
//     required this.avgtempF,
//     required this.maxwindMph,
//     required this.maxwindKph,
//     required this.totalprecipMm,
//     required this.totalprecipIn,
//     required this.totalsnowCm,
//     required this.avgvisKm,
//     required this.avgvisMiles,
//     required this.avghumidity,
//     required this.dailyWillItRain,
//     required this.dailyChanceOfRain,
//     required this.dailyWillItSnow,
//     required this.dailyChanceOfSnow,
//     required this.condition,
//     required this.uv,
//   });
//
//   factory Day.fromJson(Map<String, dynamic> json) => Day(
//         maxtempC: json["maxtemp_c"]?.toDouble(),
//         maxtempF: json["maxtemp_f"]?.toDouble(),
//         mintempC: json["mintemp_c"]?.toDouble(),
//         mintempF: json["mintemp_f"]?.toDouble(),
//         avgtempC: json["avgtemp_c"]?.toDouble(),
//         avgtempF: json["avgtemp_f"]?.toDouble(),
//         maxwindMph: json["maxwind_mph"]?.toDouble(),
//         maxwindKph: json["maxwind_kph"]?.toDouble(),
//         totalprecipMm: json["totalprecip_mm"],
//         totalprecipIn: json["totalprecip_in"],
//         totalsnowCm: json["totalsnow_cm"],
//         avgvisKm: json["avgvis_km"],
//         avgvisMiles: json["avgvis_miles"],
//         avghumidity: json["avghumidity"],
//         dailyWillItRain: json["daily_will_it_rain"],
//         dailyChanceOfRain: json["daily_chance_of_rain"],
//         dailyWillItSnow: json["daily_will_it_snow"],
//         dailyChanceOfSnow: json["daily_chance_of_snow"],
//         condition: Condition.fromJson(json["condition"]),
//         uv: json["uv"]?.toDouble(),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "maxtemp_c": maxtempC,
//         "maxtemp_f": maxtempF,
//         "mintemp_c": mintempC,
//         "mintemp_f": mintempF,
//         "avgtemp_c": avgtempC,
//         "avgtemp_f": avgtempF,
//         "maxwind_mph": maxwindMph,
//         "maxwind_kph": maxwindKph,
//         "totalprecip_mm": totalprecipMm,
//         "totalprecip_in": totalprecipIn,
//         "totalsnow_cm": totalsnowCm,
//         "avgvis_km": avgvisKm,
//         "avgvis_miles": avgvisMiles,
//         "avghumidity": avghumidity,
//         "daily_will_it_rain": dailyWillItRain,
//         "daily_chance_of_rain": dailyChanceOfRain,
//         "daily_will_it_snow": dailyWillItSnow,
//         "daily_chance_of_snow": dailyChanceOfSnow,
//         "condition": condition.toJson(),
//         "uv": uv,
//       };
// }
//
// class Location {
//   String name;
//   String region;
//   String country;
//   double lat;
//   double lon;
//   String tzId;
//   int localtimeEpoch;
//   String localtime;
//
//   Location({
//     required this.name,
//     required this.region,
//     required this.country,
//     required this.lat,
//     required this.lon,
//     required this.tzId,
//     required this.localtimeEpoch,
//     required this.localtime,
//   });
//
//   factory Location.fromJson(Map<String, dynamic> json) => Location(
//         name: json["name"],
//         region: json["region"],
//         country: json["country"],
//         lat: json["lat"]?.toDouble(),
//         lon: json["lon"]?.toDouble(),
//         tzId: json["tz_id"],
//         localtimeEpoch: json["localtime_epoch"],
//         localtime: json["localtime"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "region": region,
//         "country": country,
//         "lat": lat,
//         "lon": lon,
//         "tz_id": tzId,
//         "localtime_epoch": localtimeEpoch,
//         "localtime": localtime,
//       };
// }
//
// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }

import 'package:weatherapp/Modal/weather_model_data.dart';

class Weather {
  Location location;
  Current current;
  Forecast forecast;

  Weather({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory Weather.formMap({required Map<String, dynamic> data}) {
    return Weather(
        location: Location.formMap(
          data: data['location'],
        ),
        current: Current.formMap(
          data: data['current'],
        ),
        forecast: Forecast.formMap(
          data: data['forecast'],
        ));
  }
}

class Location {
  String name;
  String region;
  String country;
  String tzId;
  String localtime;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.tzId,
    required this.localtime,
  });

  factory Location.formMap({required Map<String, dynamic> data}) {
    return Location(
      name: data['name'],
      region: data['region'],
      country: data['country'],
      tzId: data['tz_id'],
      localtime: data['localtime'],
    );
  }
}

class Current {
  double tempC;
  Condition condition;
  double wind_mph;
  num pressure_mb;
  num vis_km;
  int humidity;
  int cloud;
  double feelslike_c;
  double uv;

  Current({
    required this.tempC,
    required this.condition,
    required this.humidity,
    required this.pressure_mb,
    required this.vis_km,
    required this.wind_mph,
    required this.cloud,
    required this.feelslike_c,
    required this.uv,
  });

  factory Current.formMap({required Map<String, dynamic> data}) {
    return Current(
      tempC: data['temp_c'],
      condition: Condition.formMap(
        data: data['condition'],
      ),
      humidity: data['humidity'],
      cloud: data['cloud'],
      pressure_mb: data['pressure_mb'],
      vis_km: data['vis_km'],
      wind_mph: data['wind_mph'],
      feelslike_c: data['feelslike_c'],
      uv: data['uv'],
    );
  }
}

class Condition {
  String text;
  String icon;

  Condition({
    required this.text,
    required this.icon,
  });

  factory Condition.formMap({required Map<String, dynamic> data}) {
    return Condition(
      text: data['text'],
      icon: data['icon'],
    );
  }
}

class HourCondition {
  String text;
  String icon;

  HourCondition({
    required this.text,
    required this.icon,
  });

  factory HourCondition.formMap({required Map<String, dynamic> data}) {
    return HourCondition(
      text: data['text'],
      icon: data['icon'],
    );
  }
}

class Forecast {
  List<ForecastDay> forecastday;

  Forecast({
    required this.forecastday,
  });

  factory Forecast.formMap({required Map<String, dynamic> data}) {
    return Forecast(
      forecastday: List<ForecastDay>.from(
        data['forecastday'].map(
          (e) => ForecastDay.formMap(data: e),
        ),
      ),
    );
  }
}

class ForecastDay {
  Astro astro;
  List<Hour> hour;

  ForecastDay({
    required this.astro,
    required this.hour,
  });

  factory ForecastDay.formMap({required Map<String, dynamic> data}) {
    return ForecastDay(
      astro: Astro.formMap(data: data['astro']),
      hour: List<Hour>.from(
        data['hour'].map(
          (e) => Hour.formMap(data: e),
        ),
      ),
    );
  }
}

class Astro {
  String sunrise;
  String sunset;

  Astro({
    required this.sunrise,
    required this.sunset,
  });

  factory Astro.formMap({required Map<String, dynamic> data}) {
    return Astro(
      sunrise: data['sunrise'],
      sunset: data['sunset'],
    );
  }
}

class Hour {
  String time;
  double tempC;
  HourCondition condition;

  Hour({
    required this.time,
    required this.tempC,
    required this.condition,
  });

  factory Hour.formMap({required Map<String, dynamic> data}) {
    return Hour(
      time: data['time'],
      tempC: data['temp_c'],
      condition: HourCondition.formMap(data: data['condition']),
    );
  }
}
