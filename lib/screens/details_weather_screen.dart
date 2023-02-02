import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/entity/forecast_weather/forecast_weather.dart';

class DetailsWeatherScreen extends StatelessWidget {
  final CityForecastWeather cityForecastWeather;

  const DetailsWeatherScreen({Key? key, required this.cityForecastWeather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cityForecastWeather.city.name),
        backgroundColor: const Color.fromRGBO(105, 205, 255, 1),
      ),
      body: Container(
          width: double.infinity,
          color: const Color.fromRGBO(105, 205, 255, 1),
          child: ListForecastWeather(cityForecastWeather: cityForecastWeather)),
    );
  }
}

class ListForecastWeather extends StatelessWidget {
  final CityForecastWeather cityForecastWeather;

  const ListForecastWeather({Key? key, required this.cityForecastWeather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle =
        TextStyle(fontSize: 15, fontWeight: FontWeight.w600);
    return ListView.builder(
        itemCount: cityForecastWeather.list.length,
        itemBuilder: (context, index) {
          return Card(
              child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 50),
                  const SizedBox(
                      width: 120,
                      child: Text(
                        'Время',
                        style: textStyle,
                      )),
                  const SizedBox(width: 30),
                  Text(DateFormat('hh:mm a, MM/dd/yyyy')
                      .format(DateTime.fromMillisecondsSinceEpoch(
                          cityForecastWeather.list[index].dt * 1000))
                      .toString()),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 50),
                  const SizedBox(
                      width: 120,
                      child: Text(
                        'Облачность',
                        style: textStyle,
                      )),
                  const SizedBox(width: 30),
                  Text(cityForecastWeather
                      .list[index].weather.first.description),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 50),
                  const SizedBox(
                      width: 120,
                      child: Text(
                        'Температура',
                        style: textStyle,
                      )),
                  const SizedBox(width: 30),
                  Text(
                      '${(cityForecastWeather.list[index].main.temp - 273.15).round()}ºC'),
                ],
              ),
            ],
          ));
        });
  }
}
