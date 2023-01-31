import 'package:flutter/material.dart';
import 'package:weather_app/entity/city_weather/city_weather.dart';


abstract class HomeScreenState {}

class NavigationHomeScreenState extends HomeScreenState {
   static late CityWeather cityWeather;
  NavigationHomeScreenState();

}

class StartHomeScreenState extends HomeScreenState {}


// HomeScreenState init() {
//   return HomeScreenState();
// }
//
// HomeScreenState clone() {
//   return HomeScreenState();
// }

