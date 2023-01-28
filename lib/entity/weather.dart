import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class CityWeather {
  final String cod;
  final int message;
  final int cnt;
  final List<ListElement> list;
  final City city;

  CityWeather(this.cod, this.message, this.cnt, this.list, this.city);



}

@JsonSerializable()
class ListElement {
  final int dt;
  final Main main;
  final List<WeatherElement> weather;
  final Clouds clouds;
  final Wind wind;
  final int visibility;
  final double pop;
  final Sys sys;
  final String dt_txt;

  ListElement(this.dt, this.main, this.weather, this.clouds, this.wind,
      this.visibility, this.pop, this.sys, this.dt_txt);
}

@JsonSerializable()
class Main {
  final double temp;
  final double feels_like;
  final double temp_min;
  final double temp_max;
  final int pressure;
  final int sea_level;
  final int grnd_level;
  final int humidity;
  final double temp_kf;

  Main(this.temp, this.feels_like, this.temp_min, this.temp_max, this.pressure,
      this.sea_level, this.grnd_level, this.humidity, this.temp_kf);
}

@JsonSerializable()
class WeatherElement {
  final int id;
  final String main;
  final String description;
  final String icon;

  WeatherElement(this.id, this.main, this.description, this.icon);
}

@JsonSerializable()
class Clouds {
  final int all;

  Clouds(this.all);
}

@JsonSerializable()
class Wind {
  final double speed;
  final int deg;
  final double gust;

  Wind(this.speed, this.deg, this.gust);
}

@JsonSerializable()
class Sys {
  final String pod;

  Sys(this.pod);
}

@JsonSerializable()
class Coord {
  final double lat;
  final double lon;

  Coord(this.lat, this.lon);
}

@JsonSerializable()
class City {
  final int id;
  final String name;
  final Coord coord;
  final String country;
  final int population;
  final int timezone;
  final int sunrise;
  final int sunset;

  City(this.id, this.name, this.coord, this.country, this.population,
      this.timezone, this.sunrise, this.sunset);
}
