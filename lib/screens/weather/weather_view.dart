import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/entity/city_weather/city_weather.dart';

import 'weather_bloc.dart';
import 'weather_event.dart';
import 'weather_state.dart';

class WeatherPage extends StatelessWidget {
  final CityWeather cityWeather;

  const WeatherPage({super.key, required this.cityWeather});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WeatherBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<WeatherBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(cityWeather.name),
          Text(cityWeather.clouds.all.toString()),
          Text(cityWeather.weather.first.description),
          Text((cityWeather.main.temp-273.15).toString()),

        ],
      ),
    );
  }
}

