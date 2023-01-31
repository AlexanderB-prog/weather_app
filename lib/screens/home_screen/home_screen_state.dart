import 'package:weather_app/entity/city_weather/city_weather.dart';


abstract class HomeScreenState {}

class NavigationHomeScreenState extends HomeScreenState {
   static late CityWeather cityWeather;
  NavigationHomeScreenState();

}

class StartHomeScreenState extends HomeScreenState {}


