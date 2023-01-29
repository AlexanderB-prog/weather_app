import 'package:flutter/material.dart';
import 'package:weather_app/screens/details_weather_screen.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/weather/weather_page.dart';


abstract class Screens {
  static const main = '/';
  static const weatherScreen = '/weather_screen';
  static const detailsScreen = '/weather_page/details_screen';
}

class MainNavigation {
  Map<String, WidgetBuilder> get routes => {
        Screens.main: (context) => const HomeScreen(),
        Screens.weatherScreen: (context) =>const WeatherScreen(),
        Screens.detailsScreen: (context) => const DetailsWeatherScreen(),
      };
}
