// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityWeather _$CityWeatherFromJson(Map<String, dynamic> json) => CityWeather(
      json['cod'] as String,
      json['message'] as int,
      json['cnt'] as int,
      (json['list'] as List<dynamic>)
          .map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityWeatherToJson(CityWeather instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
      'city': instance.city,
    };

ListElement _$ListElementFromJson(Map<String, dynamic> json) => ListElement(
      json['dt'] as int,
      Main.fromJson(json['main'] as Map<String, dynamic>),
      (json['weather'] as List<dynamic>)
          .map((e) => WeatherElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      Wind.fromJson(json['wind'] as Map<String, dynamic>),
      json['visibility'] as int,
      (json['pop'] as num).toDouble(),
      Sys.fromJson(json['sys'] as Map<String, dynamic>),
      json['dt_txt'] as String,
    );

Map<String, dynamic> _$ListElementToJson(ListElement instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'dt_txt': instance.dt_txt,
    };

Main _$MainFromJson(Map<String, dynamic> json) => Main(
      (json['temp'] as num).toDouble(),
      (json['feels_like'] as num).toDouble(),
      (json['temp_min'] as num).toDouble(),
      (json['temp_max'] as num).toDouble(),
      json['pressure'] as int,
      json['sea_level'] as int,
      json['grnd_level'] as int,
      json['humidity'] as int,
      (json['temp_kf'] as num).toDouble(),
    );

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'temp_min': instance.temp_min,
      'temp_max': instance.temp_max,
      'pressure': instance.pressure,
      'sea_level': instance.sea_level,
      'grnd_level': instance.grnd_level,
      'humidity': instance.humidity,
      'temp_kf': instance.temp_kf,
    };

WeatherElement _$WeatherElementFromJson(Map<String, dynamic> json) =>
    WeatherElement(
      json['id'] as int,
      json['main'] as String,
      json['description'] as String,
      json['icon'] as String,
    );

Map<String, dynamic> _$WeatherElementToJson(WeatherElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Clouds _$CloudsFromJson(Map<String, dynamic> json) => Clouds(
      json['all'] as int,
    );

Map<String, dynamic> _$CloudsToJson(Clouds instance) => <String, dynamic>{
      'all': instance.all,
    };

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
      (json['speed'] as num).toDouble(),
      json['deg'] as int,
      (json['gust'] as num).toDouble(),
    );

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

Sys _$SysFromJson(Map<String, dynamic> json) => Sys(
      json['pod'] as String,
    );

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'pod': instance.pod,
    };

Coord _$CoordFromJson(Map<String, dynamic> json) => Coord(
      (json['lat'] as num).toDouble(),
      (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      json['id'] as int,
      json['name'] as String,
      Coord.fromJson(json['coord'] as Map<String, dynamic>),
      json['country'] as String,
      json['population'] as int,
      json['timezone'] as int,
      json['sunrise'] as int,
      json['sunset'] as int,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coord': instance.coord,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
