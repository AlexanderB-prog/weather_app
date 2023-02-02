import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/api/api_client.dart';
import 'package:weather_app/entity/city/city.dart';
import 'package:weather_app/entity/city_weather/city_weather.dart';

import 'home_screen_event.dart';
import 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(StartHomeScreenState()) {
    on<OnChangedHomeScreenEvent>(_onChange);
    on<NavigationEvent>(_navigation);
  }

  String city = '';

  void _onChange(OnChangedHomeScreenEvent event,_) {
    city = event.text;
  }
  void _navigation(NavigationEvent event, Emitter<HomeScreenState> emit) async {

    late List<CityCoordinate> cityCoordinate;
    cityCoordinate = await ApiClient().getCityCoordinate(city, 1);

    //print('${cityCoordinate.first.name} ${cityCoordinate.first.lat} ${cityCoordinate.first.lon}');
    CityWeather cityWeather = await ApiClient().getCityWeather(
        cityCoordinate.first.lat, cityCoordinate.first.lon);

    emit(NavigationHomeScreenState(cityWeather: cityWeather));
  }
}

