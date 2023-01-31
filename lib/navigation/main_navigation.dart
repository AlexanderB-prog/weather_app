import 'package:flutter/material.dart';
import 'package:weather_app/entity/city_weather/city_weather.dart';
import 'package:weather_app/screens/details_weather_screen.dart';
import 'package:weather_app/screens/home_screen/home_screen_state.dart';
import 'package:weather_app/screens/home_screen/home_screen_view.dart';
import 'package:weather_app/screens/weather/weather_view.dart';


abstract class Screens {
  static const main = '/';
  static const weatherScreen = '/weather_screen';
  static const detailsScreen = '/weather_page/details_screen';
}

class MainNavigation {
  Map<String, WidgetBuilder> get routes => {
        Screens.main: (context) => HomeScreenPage(),
        Screens.detailsScreen: (context) => const DetailsWeatherScreen(),
      };


  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Screens.weatherScreen:
        final arguments = settings.arguments as CityWeather;
        return MaterialPageRoute(
          builder: (context) => WeatherPage(cityWeather: arguments,),
        );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (context) => widget);
    }
  }


}
