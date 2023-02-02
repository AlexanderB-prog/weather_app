import 'package:weather_app/entity/city_weather/city_weather.dart';


abstract class HomeScreenState {}

class NavigationHomeScreenState extends HomeScreenState {
  final CityWeather cityWeather;
  NavigationHomeScreenState({required this.cityWeather});



}

class StartHomeScreenState extends HomeScreenState {}


