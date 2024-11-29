import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/Controller/weather_controller.dart';
import 'package:weatherapp/routes/routes.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => WeatherController(),
          )
        ],
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: Routes.myRoutes,
        ),
      ),
    );
  }
}
