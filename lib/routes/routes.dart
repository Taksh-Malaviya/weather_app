import 'package:flutter/material.dart';
import 'package:weatherapp/routes/view/screen/home.dart';
import 'package:weatherapp/routes/view/screen/splah.dart';

class Routes {
  static const String splash = '/';
  static const String home = 'home';

  static Map<String, WidgetBuilder> myRoutes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomePage(),
  };
}
