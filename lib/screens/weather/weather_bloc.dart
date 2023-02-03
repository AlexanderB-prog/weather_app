import 'package:bloc/bloc.dart';
import 'package:weather_app/api/api_client.dart';
import 'package:weather_app/entity/forecast_weather/forecast_weather.dart';

import 'weather_event.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(StartCityWeatherState()) {
    on<DetailsEvent>(_details);
    on<PopEvent>(_pop);
  }

  void _details(DetailsEvent event, Emitter<WeatherState> emit) async {

    CityForecastWeather cityForecastWeather = await ApiClient().getCityForecastWeather(event.id);
    emit(CityWeatherState(cityForecastWeather));
  }

  void _pop(PopEvent event, Emitter<WeatherState> emit) async {
    emit(PopWeatherState());
  }
}
