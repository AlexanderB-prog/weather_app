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
    const  TextStyle textStyle =  TextStyle(fontSize: 15, fontWeight: FontWeight.w600);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(105, 205, 255, 1),
        actions: [IconButton(onPressed: () {bloc.add(DetailsEvent());}, icon: const Icon(Icons.more))],),
      body: Container(
        color: const Color.fromRGBO(105, 205, 255, 1),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              cityWeather.name,
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 50),
                    const SizedBox(width: 120, child: Text('Облачность', style: textStyle,)),
                    const SizedBox(width: 30),
                    Text(
                        '${cityWeather.clouds.all}(${cityWeather.weather.first.description})', style: textStyle,),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(width: 50),
                    const SizedBox(width: 120, child: Text('Скорость ветра', style: textStyle,)),
                    const SizedBox(width: 30),
                    Text(cityWeather.wind.speed.toString(), style: textStyle,),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(width: 50),
                    const SizedBox(width: 120, child: Text('Температура', style: textStyle,)),
                    const SizedBox(width: 30),
                    Text('${(cityWeather.main.temp - 273.15).round()}ºC', style: textStyle,),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
